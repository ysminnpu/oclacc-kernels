; ModuleID = 'JacobiKernelBorder.cl'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024"
target triple = "spir64-unknown-unknown"

; Function Attrs: nounwind
define cc75 void @JacobiKernelBorder(float addrspace(1)* noalias nocapture readonly %inp, float addrspace(1)* noalias nocapture %outp, float %scale) #0 {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) #2
  %2 = trunc i64 %1 to i32
  %3 = tail call cc75 i64 @_Z13get_global_idj(i32 1) #2
  %4 = trunc i64 %3 to i32
  %5 = tail call cc75 i64 @_Z15get_global_sizej(i32 0) #2
  %6 = trunc i64 %5 to i32
  %7 = mul nsw i32 %6, %4
  %8 = add nsw i32 %7, %2
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds float addrspace(1)* %inp, i64 %9
  %11 = load float addrspace(1)* %10, align 4, !tbaa !10
  %12 = icmp sgt i32 %2, 0
  br i1 %12, label %13, label %46

; <label>:13                                      ; preds = %0
  %14 = tail call cc75 i64 @_Z15get_global_sizej(i32 1) #2
  %15 = trunc i64 %14 to i32
  %16 = add nsw i32 %6, -1
  %17 = icmp slt i32 %2, %16
  %18 = icmp sgt i32 %4, 0
  %or.cond = and i1 %17, %18
  %19 = add nsw i32 %15, -1
  %20 = icmp slt i32 %4, %19
  %or.cond3 = and i1 %or.cond, %20
  br i1 %or.cond3, label %21, label %46

; <label>:21                                      ; preds = %13
  %22 = add nsw i32 %4, -1
  %23 = mul nsw i32 %22, %6
  %24 = add nsw i32 %23, %2
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float addrspace(1)* %inp, i64 %25
  %27 = load float addrspace(1)* %26, align 4, !tbaa !10
  %28 = add nsw i32 %8, -1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float addrspace(1)* %inp, i64 %29
  %31 = load float addrspace(1)* %30, align 4, !tbaa !10
  %32 = fadd float %27, %31
  %33 = add nsw i32 %8, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float addrspace(1)* %inp, i64 %34
  %36 = load float addrspace(1)* %35, align 4, !tbaa !10
  %37 = fadd float %32, %36
  %38 = add nsw i32 %4, 1
  %39 = mul nsw i32 %38, %6
  %40 = add nsw i32 %39, %2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float addrspace(1)* %inp, i64 %41
  %43 = load float addrspace(1)* %42, align 4, !tbaa !10
  %44 = fadd float %37, %43
  %45 = fmul float %44, %scale
  br label %46

; <label>:46                                      ; preds = %21, %13, %0
  %tmp.0 = phi float [ %45, %21 ], [ %11, %13 ], [ %11, %0 ]
  %47 = getelementptr inbounds float addrspace(1)* %outp, i64 %9
  store float %tmp.0, float addrspace(1)* %47, align 4, !tbaa !10
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

!0 = metadata !{void (float addrspace(1)*, float addrspace(1)*, float)* @JacobiKernelBorder, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"float*", metadata !"float"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"restrict", metadata !"restrict", metadata !""}
!5 = metadata !{metadata !"kernel_arg_base_type", metadata !"float*", metadata !"float*", metadata !"float"}
!6 = metadata !{i32 2, i32 0}
!7 = metadata !{}
!8 = metadata !{metadata !"-cl-std=CL2.0"}
!9 = metadata !{metadata !"clang version 3.4.2 "}
!10 = metadata !{metadata !11, metadata !11, i64 0}
!11 = metadata !{metadata !"float", metadata !12, i64 0}
!12 = metadata !{metadata !"omnipotent char", metadata !13, i64 0}
!13 = metadata !{metadata !"Simple C/C++ TBAA"}
