; ModuleID = 'JacobiKernelBorder1D.cl'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024"
target triple = "spir64-unknown-unknown"

; Function Attrs: nounwind
define cc75 void @JacobiKernelBorder(float addrspace(1)* nocapture readonly %inp, float addrspace(1)* nocapture %outp, i32 %width) #0 {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) #2
  %2 = trunc i64 %1 to i32
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds float addrspace(1)* %inp, i64 %3
  %5 = load float addrspace(1)* %4, align 4, !tbaa !11
  %6 = icmp sgt i32 %2, 0
  %7 = add nsw i32 %width, -1
  %8 = icmp slt i32 %2, %7
  %or.cond = and i1 %6, %8
  br i1 %or.cond, label %9, label %20

; <label>:9                                       ; preds = %0
  %10 = add nsw i32 %2, -1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds float addrspace(1)* %inp, i64 %11
  %13 = load float addrspace(1)* %12, align 4, !tbaa !11
  %14 = add nsw i32 %2, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float addrspace(1)* %inp, i64 %15
  %17 = load float addrspace(1)* %16, align 4, !tbaa !11
  %18 = fadd float %13, %17
  %19 = fmul float %18, 5.000000e-01
  br label %20

; <label>:20                                      ; preds = %9, %0
  %tmp.0 = phi float [ %19, %9 ], [ %5, %0 ]
  %21 = getelementptr inbounds float addrspace(1)* %outp, i64 %3
  store float %tmp.0, float addrspace(1)* %21, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind readnone
declare cc75 i64 @_Z13get_global_idj(i32) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!opencl.kernels = !{!0}
!opencl.enable.FP_CONTRACT = !{}
!opencl.spir.version = !{!6}
!opencl.ocl.version = !{!6}
!opencl.used.extensions = !{!7}
!opencl.used.optional.core.features = !{!8}
!opencl.compiler.options = !{!9}
!llvm.ident = !{!10}

!0 = metadata !{void (float addrspace(1)*, float addrspace(1)*, i32)* @JacobiKernelBorder, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"float*", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_base_type", metadata !"float*", metadata !"float*", metadata !"int"}
!6 = metadata !{i32 2, i32 0}
!7 = metadata !{}
!8 = metadata !{metadata !"cl_doubles"}
!9 = metadata !{metadata !"-cl-std=CL2.0"}
!10 = metadata !{metadata !"clang version 3.4.2 "}
!11 = metadata !{metadata !12, metadata !12, i64 0}
!12 = metadata !{metadata !"float", metadata !13, i64 0}
!13 = metadata !{metadata !"omnipotent char", metadata !14, i64 0}
!14 = metadata !{metadata !"Simple C/C++ TBAA"}
