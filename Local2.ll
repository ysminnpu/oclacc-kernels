; ModuleID = 'Local2.cl'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024"
target triple = "spir64-unknown-unknown"

%struct.Localstruct = type { [17 x float], float }

@Local.nextData = internal addrspace(3) unnamed_addr global [1024 x [1024 x float]] zeroinitializer, align 4
@Local.x = internal addrspace(3) unnamed_addr global float 0.000000e+00, align 4
@Local.S = internal addrspace(3) unnamed_addr global [1024 x %struct.Localstruct] zeroinitializer, align 4

; Function Attrs: nounwind
define cc75 void @Local(float addrspace(1)* nocapture readonly %inputData, float addrspace(1)* nocapture %outputData) #0 {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) #3
  %2 = tail call cc75 i64 @_Z12get_local_idj(i32 0) #3
  %3 = getelementptr inbounds float addrspace(1)* %inputData, i64 %1
  %4 = load float addrspace(1)* %3, align 4, !tbaa !11
  %5 = add i64 %2, 1
  %6 = and i64 %5, 255
  %7 = getelementptr inbounds [1024 x %struct.Localstruct] addrspace(3)* @Local.S, i64 0, i64 %6, i32 0, i64 %2
  store float %4, float addrspace(3)* %7, align 4, !tbaa !11
  store float 5.000000e-01, float addrspace(3)* getelementptr inbounds ([1024 x %struct.Localstruct] addrspace(3)* @Local.S, i64 0, i64 1023, i32 0, i64 16), align 4, !tbaa !11
  %8 = load float addrspace(3)* @Local.x, align 4, !tbaa !11
  %9 = fadd float %8, 1.000000e+00
  store float %9, float addrspace(3)* @Local.x, align 4, !tbaa !11
  %10 = getelementptr inbounds [1024 x %struct.Localstruct] addrspace(3)* @Local.S, i64 0, i64 %6, i32 1
  %11 = load float addrspace(3)* %10, align 4, !tbaa !15
  %12 = getelementptr inbounds [1024 x [1024 x float]] addrspace(3)* @Local.nextData, i64 0, i64 %6, i64 %6
  %13 = load float addrspace(3)* %12, align 4, !tbaa !11
  %14 = fadd float %11, %13
  store float %14, float addrspace(3)* %12, align 4, !tbaa !11
  tail call cc75 void @_Z7barrierj(i32 3) #4
  %15 = getelementptr inbounds [1024 x [1024 x float]] addrspace(3)* @Local.nextData, i64 0, i64 %2, i64 %2
  %16 = load float addrspace(3)* %15, align 4, !tbaa !11
  %17 = getelementptr inbounds float addrspace(1)* %outputData, i64 %1
  store float %16, float addrspace(1)* %17, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind readnone
declare cc75 i64 @_Z13get_global_idj(i32) #1

; Function Attrs: nounwind readnone
declare cc75 i64 @_Z12get_local_idj(i32) #1

declare cc75 void @_Z7barrierj(i32) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }

!opencl.kernels = !{!0}
!opencl.enable.FP_CONTRACT = !{}
!opencl.spir.version = !{!7}
!opencl.ocl.version = !{!7}
!opencl.used.extensions = !{!8}
!opencl.used.optional.core.features = !{!8}
!opencl.compiler.options = !{!9}
!llvm.ident = !{!10}

!0 = metadata !{void (float addrspace(1)*, float addrspace(1)*)* @Local, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"float*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_base_type", metadata !"float*", metadata !"float*"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 16, i32 1, i32 1}
!7 = metadata !{i32 2, i32 0}
!8 = metadata !{}
!9 = metadata !{metadata !"-cl-std=CL2.0"}
!10 = metadata !{metadata !"clang version 3.4.2 "}
!11 = metadata !{metadata !12, metadata !12, i64 0}
!12 = metadata !{metadata !"float", metadata !13, i64 0}
!13 = metadata !{metadata !"omnipotent char", metadata !14, i64 0}
!14 = metadata !{metadata !"Simple C/C++ TBAA"}
!15 = metadata !{metadata !16, metadata !12, i64 68}
!16 = metadata !{metadata !"Localstruct", metadata !13, i64 0, metadata !12, i64 68}
