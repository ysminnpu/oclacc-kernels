; ModuleID = 'Local.cl'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024"
target triple = "spir64-unknown-unknown"

; Function Attrs: nounwind
define cc75 void @Local(float addrspace(1)* nocapture readonly %inputData, float addrspace(1)* nocapture %outputData, float addrspace(3)* nocapture %nextData) #0 {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) #3
  %2 = tail call cc75 i64 @_Z12get_local_idj(i32 0) #3
  %3 = tail call cc75 i64 @_Z14get_local_sizej(i32 0) #3
  %4 = getelementptr inbounds float addrspace(1)* %inputData, i64 %1
  %5 = load float addrspace(1)* %4, align 4, !tbaa !10
  %6 = add i64 %2, 1
  %7 = urem i64 %6, %3
  %8 = getelementptr inbounds float addrspace(3)* %nextData, i64 %7
  %9 = load float addrspace(3)* %8, align 4, !tbaa !10
  %10 = fadd float %5, %9
  store float %10, float addrspace(3)* %8, align 4, !tbaa !10
  %11 = add i64 %7, 1
  %12 = getelementptr inbounds float addrspace(3)* %nextData, i64 %11
  %13 = load float addrspace(3)* %12, align 4, !tbaa !10
  %14 = fadd float %5, %13
  store float %14, float addrspace(3)* %12, align 4, !tbaa !10
  tail call cc75 void @_Z7barrierj(i32 1) #4
  tail call cc75 void @_Z7barrierj(i32 2) #4
  %15 = getelementptr inbounds float addrspace(3)* %nextData, i64 %2
  %16 = load float addrspace(3)* %15, align 4, !tbaa !10
  %17 = getelementptr inbounds float addrspace(1)* %outputData, i64 %1
  store float %16, float addrspace(1)* %17, align 4, !tbaa !10
  %18 = getelementptr inbounds float addrspace(3)* %nextData, i64 %6
  %19 = load float addrspace(3)* %18, align 4, !tbaa !10
  %20 = add i64 %1, 1
  %21 = getelementptr inbounds float addrspace(1)* %outputData, i64 %20
  store float %19, float addrspace(1)* %21, align 4, !tbaa !10
  ret void
}

; Function Attrs: nounwind readnone
declare cc75 i64 @_Z13get_global_idj(i32) #1

; Function Attrs: nounwind readnone
declare cc75 i64 @_Z12get_local_idj(i32) #1

; Function Attrs: nounwind readnone
declare cc75 i64 @_Z14get_local_sizej(i32) #1

declare cc75 void @_Z7barrierj(i32) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }

!opencl.kernels = !{!0}
!opencl.enable.FP_CONTRACT = !{}
!opencl.spir.version = !{!6}
!opencl.ocl.version = !{!6}
!opencl.used.extensions = !{!7}
!opencl.used.optional.core.features = !{!7}
!opencl.compiler.options = !{!8}
!llvm.ident = !{!9}

!0 = metadata !{void (float addrspace(1)*, float addrspace(1)*, float addrspace(3)*)* @Local, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 3}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"float*", metadata !"float*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_base_type", metadata !"float*", metadata !"float*", metadata !"float*"}
!6 = metadata !{i32 2, i32 0}
!7 = metadata !{}
!8 = metadata !{metadata !"-cl-std=CL2.0"}
!9 = metadata !{metadata !"clang version 3.4.2 "}
!10 = metadata !{metadata !11, metadata !11, i64 0}
!11 = metadata !{metadata !"float", metadata !12, i64 0}
!12 = metadata !{metadata !"omnipotent char", metadata !13, i64 0}
!13 = metadata !{metadata !"Simple C/C++ TBAA"}
