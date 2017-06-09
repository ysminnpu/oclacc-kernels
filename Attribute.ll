; ModuleID = 'Attribute.cl'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024"
target triple = "spir64-unknown-unknown"

; Function Attrs: nounwind
define cc75 void @attribute(i32 addrspace(1)* noalias nocapture %a, i32 %size) #0 {
  %1 = icmp sgt i32 %size, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = tail call cc75 i64 @_Z12get_local_idj(i32 0) #2
  %3 = uitofp i64 %2 to double
  %4 = fmul double %3, 4.000000e+00
  br label %5

; <label>:5                                       ; preds = %.lr.ph, %5
  %i.01 = phi i32 [ 0, %.lr.ph ], [ %12, %5 ]
  %6 = sext i32 %i.01 to i64
  %7 = getelementptr inbounds i32 addrspace(1)* %a, i64 %6
  %8 = load i32 addrspace(1)* %7, align 4, !tbaa !12
  %9 = sitofp i32 %8 to double
  %10 = fadd double %9, %4
  %11 = fptosi double %10 to i32
  store i32 %11, i32 addrspace(1)* %7, align 4, !tbaa !12
  %12 = add nsw i32 %i.01, 1
  %13 = icmp slt i32 %12, %size
  br i1 %13, label %5, label %._crit_edge

._crit_edge:                                      ; preds = %5, %0
  ret void
}

; Function Attrs: nounwind readnone
declare cc75 i64 @_Z12get_local_idj(i32) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!opencl.kernels = !{!0}
!opencl.enable.FP_CONTRACT = !{}
!opencl.spir.version = !{!7}
!opencl.ocl.version = !{!7}
!opencl.used.extensions = !{!8}
!opencl.used.optional.core.features = !{!9}
!opencl.compiler.options = !{!10}
!llvm.ident = !{!11}

!0 = metadata !{void (i32 addrspace(1)*, i32)* @attribute, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"restrict", metadata !""}
!5 = metadata !{metadata !"kernel_arg_base_type", metadata !"int*", metadata !"int"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 16, i32 1, i32 1}
!7 = metadata !{i32 2, i32 0}
!8 = metadata !{}
!9 = metadata !{metadata !"cl_doubles"}
!10 = metadata !{metadata !"-cl-std=CL2.0"}
!11 = metadata !{metadata !"clang version 3.4.2 "}
!12 = metadata !{metadata !13, metadata !13, i64 0}
!13 = metadata !{metadata !"int", metadata !14, i64 0}
!14 = metadata !{metadata !"omnipotent char", metadata !15, i64 0}
!15 = metadata !{metadata !"Simple C/C++ TBAA"}
