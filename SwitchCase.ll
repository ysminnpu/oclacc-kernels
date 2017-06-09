; ModuleID = 'SwitchCase.cl'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024"
target triple = "spir64-unknown-unknown"

; Function Attrs: nounwind
define cc75 void @SwitchCase(float addrspace(1)* nocapture readonly %inp, float addrspace(1)* nocapture %outp, i32 %selector) #0 {
  switch i32 %selector, label %12 [
    i32 0, label %1
    i32 1, label %3
    i32 2, label %6
    i32 3, label %9
  ]

; <label>:1                                       ; preds = %0
  %2 = load float addrspace(1)* %inp, align 4, !tbaa !10
  store float %2, float addrspace(1)* %outp, align 4, !tbaa !10
  br label %14

; <label>:3                                       ; preds = %0
  %4 = load float addrspace(1)* %inp, align 4, !tbaa !10
  %5 = fadd float %4, -1.000000e+00
  store float %5, float addrspace(1)* %outp, align 4, !tbaa !10
  br label %14

; <label>:6                                       ; preds = %0
  %7 = load float addrspace(1)* %inp, align 4, !tbaa !10
  %8 = fadd float %7, -2.000000e+00
  store float %8, float addrspace(1)* %outp, align 4, !tbaa !10
  br label %14

; <label>:9                                       ; preds = %0
  %10 = load float addrspace(1)* %inp, align 4, !tbaa !10
  %11 = fadd float %10, -3.000000e+00
  store float %11, float addrspace(1)* %outp, align 4, !tbaa !10
  br label %12

; <label>:12                                      ; preds = %0, %9
  %13 = load float addrspace(1)* %inp, align 4, !tbaa !10
  store float %13, float addrspace(1)* %outp, align 4, !tbaa !10
  br label %14

; <label>:14                                      ; preds = %12, %6, %3, %1
  ret void
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!opencl.kernels = !{!0}
!opencl.enable.FP_CONTRACT = !{}
!opencl.spir.version = !{!6}
!opencl.ocl.version = !{!6}
!opencl.used.extensions = !{!7}
!opencl.used.optional.core.features = !{!7}
!opencl.compiler.options = !{!8}
!llvm.ident = !{!9}

!0 = metadata !{void (float addrspace(1)*, float addrspace(1)*, i32)* @SwitchCase, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"float*", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_base_type", metadata !"float*", metadata !"float*", metadata !"int"}
!6 = metadata !{i32 2, i32 0}
!7 = metadata !{}
!8 = metadata !{metadata !"-cl-std=CL2.0"}
!9 = metadata !{metadata !"clang version 3.4.2 "}
!10 = metadata !{metadata !11, metadata !11, i64 0}
!11 = metadata !{metadata !"float", metadata !12, i64 0}
!12 = metadata !{metadata !"omnipotent char", metadata !13, i64 0}
!13 = metadata !{metadata !"Simple C/C++ TBAA"}
