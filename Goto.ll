; ModuleID = 'Goto.cl'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024"
target triple = "spir64-unknown-unknown"

; Function Attrs: noreturn nounwind
define cc75 void @Goto(float addrspace(4)* nocapture %a) #0 {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) #2
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i32 %2, 2
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds float addrspace(4)* %a, i64 %4
  br i1 %3, label %.split.us, label %8

.split.us:                                        ; preds = %.split.us, %0
  %6 = load float addrspace(4)* %5, align 4, !tbaa !10
  %7 = fadd float %6, 1.000000e+00
  store float %7, float addrspace(4)* %5, align 4, !tbaa !10
  br label %.split.us

; <label>:8                                       ; preds = %0, %8
  %9 = load float addrspace(4)* %5, align 4, !tbaa !10
  %10 = fadd float %9, 1.000000e+00
  %phitmp = fadd float %10, 1.000000e+00
  store float %phitmp, float addrspace(4)* %5, align 4, !tbaa !10
  br label %8
}

; Function Attrs: nounwind readnone
declare cc75 i64 @_Z13get_global_idj(i32) #1

attributes #0 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!opencl.kernels = !{!0}
!opencl.enable.FP_CONTRACT = !{}
!opencl.spir.version = !{!6}
!opencl.ocl.version = !{!6}
!opencl.used.extensions = !{!7}
!opencl.used.optional.core.features = !{!7}
!opencl.compiler.options = !{!8}
!llvm.ident = !{!9}

!0 = metadata !{void (float addrspace(4)*)* @Goto, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 4}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_base_type", metadata !"float*"}
!6 = metadata !{i32 2, i32 0}
!7 = metadata !{}
!8 = metadata !{metadata !"-cl-std=CL2.0"}
!9 = metadata !{metadata !"clang version 3.4.2 "}
!10 = metadata !{metadata !11, metadata !11, i64 0}
!11 = metadata !{metadata !"float", metadata !12, i64 0}
!12 = metadata !{metadata !"omnipotent char", metadata !13, i64 0}
!13 = metadata !{metadata !"Simple C/C++ TBAA"}
