(in-package :cmp)
(export '(
          *debug-link-options* ;; A list of strings to inject into link commands
          *debug-dump-module*  ;; Dump intermediate modules
          quick-module-dump
          *irbuilder*
          +ltv*+
          irc-function-create
          +fn-prototype+
          *all-functions-for-one-compile*
          *cleavir-compile-file-hook*
          *cleavir-compile-hook*
          *compile-print*
          *compile-counter*
          *compile-duration-ns*
          *current-function*
          *current-function-name*
          *debug-compile-file*
          *debug-dump-module*
          *generate-compile-file-load-time-values*
          *gv-current-function-name*
          *gv-source-file-info-handle*
          *gv-source-namestring*
          *implicit-compile-hook*
          *irbuilder*
          *llvm-context*
          *load-time-value-holder-global-var*
          *low-level-trace*
          *low-level-trace-print*
          *run-time-execution-engine*
          *run-time-literal-holder*
          *run-time-values-table-name*
          *run-time-values-table-global-var*
          *the-module*
          +cons-tag+
          +fixnum-tag+
          +valist-tag+
          +single-float-tag+
          +character-tag+
          +general-tag+
          +i1+
          +exception-struct+
          +fn-prototype+
          +fn-prototype-argument-names+
          +i32+
          +i64+
          +i8*+
          +i8+
          +mv-struct+
          +size_t+
          +t*+
          +t**+
          calling-convention-args
          calling-convention-args.va-arg
          calling-convention-va-list
          calling-convention-nargs
          calling-convention-register-args
          calling-convention-write-registers-to-multiple-values
          cmp-log
          cmp-log-dump
          codegen-rtv
          codegen
          compile-error-if-not-enough-arguments
          compile-in-env
          compile-lambda-function
          bclasp-compile-form
          compile-form
          reference-evaluated-function
          compile-ltv-thunk
          compiler-error
          compiler-fatal-error
          compiler-message-file
          compiler-message-file-position
          create-run-time-execution-engine
          safe-system
          dbg-set-current-debug-location-here
          irc-verify-module-safe
          irc-verify-function
          irc-add
          irc-alloca-tmv
          irc-add-clause
          irc-basic-block-create
          irc-begin-block
          irc-br
          irc-branch-to-and-begin-block
          irc-cond-br
          irc-create-call
          irc-create-invoke
          irc-create-invoke-default-unwind
          irc-create-landing-pad
          irc-exception-typeid*
          irc-generate-terminate-code
          irc-size_t-*current-source-pos-info*-filepos
          irc-size_t-*current-source-pos-info*-column
          irc-size_t-*current-source-pos-info*-lineno
          irc-icmp-eq
          irc-icmp-slt
          irc-intrinsic
          irc-intrinsic-args
          irc-load
          irc-low-level-trace
          irc-phi
          irc-personality-function
          irc-phi-add-incoming
          irc-preserve-exception-info
          irc-renv
          irc-ret-void
          irc-store
          irc-switch
          irc-unreachable
          irc-trunc
          jit-constant-i1
          jit-constant-i8
          jit-constant-i32
          jit-constant-i64
          jit-constant-size_t
          jit-constant-unique-string-ptr
          jit-function-name
          jit-make-global-string-ptr
          llvm-link
          link-intrinsics-module
          load-bitcode
          parse-function-arguments
          set-associated-funcs
          treat-as-special-operator-p
          typeid-core-unwind
          walk-form-for-source-info
          with-catch
          with-new-function
          with-dbg-function
          with-dbg-lexical-block
          dbg-set-current-source-pos
          dbg-set-current-source-pos-for-irbuilder
          with-debug-info-generator
          with-irbuilder
          with-landing-pad
          with-ltv-function-codegen
          compile-reference-to-literal
          compile-reference-to-load-time-value
          ltv-global
          bclasp-compile
          bclasp-compile-file
          make-uintptr_t
          +cons-car-offset+
          +cons-cdr-offset+
          +uintptr_t+
          +return_type+
          +VaList_S+
          null-t-ptr
          compile-error-if-wrong-number-of-arguments
          compile-error-if-too-many-arguments
          compile-throw-if-excess-keyword-arguments
          *irbuilder-ltv-function-body*
          *irbuilder-ltv-function-alloca*
          irc-get-cleanup-landing-pad-block
          *gv-source-debug-namestring*
          *source-debug-offset*
          *source-debug-use-lineno*
          irc-get-terminate-landing-pad-block
          irc-function-cleanup-and-return
          +RUN-AND-LOAD-TIME-VALUE-HOLDER-GLOBAL-VAR-TYPE+
          ))

(eval-when (:compile-toplevel :load-toplevel :execute)
  (if (find-package "LITERAL")
      nil
      (make-package "LITERAL" :use (list :CL :CMP :CORE))))

(in-package :literal)

(export '(
          reference-literal
          compile-reference-to-symbol
          codegen-rtv
          codegen-literal
          codegen-quote
          compile-reference-to-load-time-value
          compile-reference-to-literal
          compile-ltv-thunk
          ltv-global
          compile-ltv-thunk
          load-time-value-reference
          get-load-time-value
          *load-time-value-holder-global-var*
          copy-load-time-value
          with-ltv
          )
        )

(use-package :literal :cmp)
