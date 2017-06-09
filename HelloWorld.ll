; ModuleID = 'HelloWorld.cl'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024"
target triple = "spir64-unknown-unknown"

; Function Attrs: nounwind
define cc75 void @hello_world(i8 addrspace(1)* nocapture %string) #0 {
  store i8 72, i8 addrspace(1)* %string, align 1, !tbaa !10
  %1 = getelementptr inbounds i8 addrspace(1)* %string, i64 1
  store i8 101, i8 addrspace(1)* %1, align 1, !tbaa !10
  %2 = getelementptr inbounds i8 addrspace(1)* %string, i64 2
  store i8 108, i8 addrspace(1)* %2, align 1, !tbaa !10
  %3 = getelementptr inbounds i8 addrspace(1)* %string, i64 3
  store i8 108, i8 addrspace(1)* %3, align 1, !tbaa !10
  %4 = getelementptr inbounds i8 addrspace(1)* %string, i64 4
  store i8 111, i8 addrspace(1)* %4, align 1, !tbaa !10
  %5 = getelementptr inbounds i8 addrspace(1)* %string, i64 5
  store i8 44, i8 addrspace(1)* %5, align 1, !tbaa !10
  %6 = getelementptr inbounds i8 addrspace(1)* %string, i64 6
  store i8 32, i8 addrspace(1)* %6, align 1, !tbaa !10
  %7 = getelementptr inbounds i8 addrspace(1)* %string, i64 7
  store i8 87, i8 addrspace(1)* %7, align 1, !tbaa !10
  %8 = getelementptr inbounds i8 addrspace(1)* %string, i64 8
  store i8 111, i8 addrspace(1)* %8, align 1, !tbaa !10
  %9 = getelementptr inbounds i8 addrspace(1)* %string, i64 9
  store i8 114, i8 addrspace(1)* %9, align 1, !tbaa !10
  %10 = getelementptr inbounds i8 addrspace(1)* %string, i64 10
  store i8 108, i8 addrspace(1)* %10, align 1, !tbaa !10
  %11 = getelementptr inbounds i8 addrspace(1)* %string, i64 11
  store i8 100, i8 addrspace(1)* %11, align 1, !tbaa !10
  %12 = getelementptr inbounds i8 addrspace(1)* %string, i64 12
  store i8 33, i8 addrspace(1)* %12, align 1, !tbaa !10
  %13 = getelementptr inbounds i8 addrspace(1)* %string, i64 13
  store i8 0, i8 addrspace(1)* %13, align 1, !tbaa !10
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

!0 = metadata !{void (i8 addrspace(1)*)* @hello_world, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_base_type", metadata !"char*"}
!6 = metadata !{i32 2, i32 0}
!7 = metadata !{}
!8 = metadata !{metadata !"-cl-std=CL2.0"}
!9 = metadata !{metadata !"clang version 3.4.2 "}
!10 = metadata !{metadata !11, metadata !11, i64 0}
!11 = metadata !{metadata !"omnipotent char", metadata !12, i64 0}
!12 = metadata !{metadata !"Simple C/C++ TBAA"}
