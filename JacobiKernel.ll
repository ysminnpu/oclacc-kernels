; ModuleID = 'JacobiKernel.cl'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024"
target triple = "spir64-unknown-unknown"

; Function Attrs: nounwind
define cc75 void @JacobiKernel(float addrspace(1)* noalias nocapture readonly %in, float addrspace(1)* noalias nocapture %out, i32 addrspace(1)* nocapture %testout, float %scale) #0 {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) #2
  %2 = trunc i64 %1 to i32
  %3 = tail call cc75 i64 @_Z13get_global_idj(i32 1) #2
  %4 = trunc i64 %3 to i32
  %5 = tail call cc75 i64 @_Z15get_global_sizej(i32 0) #2
  %6 = trunc i64 %5 to i32
  %7 = add nsw i32 %4, -1
  %8 = mul nsw i32 %7, %6
  %9 = add nsw i32 %8, %2
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds float addrspace(1)* %in, i64 %10
  %12 = load float addrspace(1)* %11, align 4, !tbaa !10
  %13 = mul nsw i32 %6, %4
  %14 = add nsw i32 %13, %2
  %15 = add nsw i32 %14, -1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds float addrspace(1)* %in, i64 %16
  %18 = load float addrspace(1)* %17, align 4, !tbaa !10
  %19 = fadd float %12, %18
  %20 = add nsw i32 %14, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float addrspace(1)* %in, i64 %21
  %23 = load float addrspace(1)* %22, align 4, !tbaa !10
  %24 = fadd float %19, %23
  %25 = add nsw i32 %4, 1
  %26 = mul nsw i32 %25, %6
  %27 = add nsw i32 %26, %2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float addrspace(1)* %in, i64 %28
  %30 = load float addrspace(1)* %29, align 4, !tbaa !10
  %31 = fadd float %24, %30
  %32 = fmul float %31, %scale
  %33 = sext i32 %14 to i64
  %34 = getelementptr inbounds float addrspace(1)* %out, i64 %33
  store float %32, float addrspace(1)* %34, align 4, !tbaa !10
  %35 = sub i64 %1, %3
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds i32 addrspace(1)* %testout, i64 %33
  store i32 %36, i32 addrspace(1)* %37, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind readnone
declare cc75 i64 @_Z13get_global_idj(i32) #1

; Function Attrs: nounwind readnone
declare cc75 i64 @_Z15get_global_sizej(i32) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
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

!0 = metadata !{void (float addrspace(1)*, float addrspace(1)*, i32 addrspace(1)*, float)* @JacobiKernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"float*", metadata !"int*", metadata !"float"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"restrict", metadata !"restrict", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_base_type", metadata !"float*", metadata !"float*", metadata !"int*", metadata !"float"}
!6 = metadata !{i32 2, i32 0}
!7 = metadata !{}
!8 = metadata !{metadata !"-cl-std=CL2.0"}
!9 = metadata !{metadata !"clang version 3.4.2 "}
!10 = metadata !{metadata !11, metadata !11, i64 0}
!11 = metadata !{metadata !"float", metadata !12, i64 0}
!12 = metadata !{metadata !"omnipotent char", metadata !13, i64 0}
!13 = metadata !{metadata !"Simple C/C++ TBAA"}
!14 = metadata !{metadata !15, metadata !15, i64 0}
!15 = metadata !{metadata !"int", metadata !12, i64 0}
