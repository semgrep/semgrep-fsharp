(**
   Boilerplate to be used as a template when mapping the fsharp CST
   to another type of tree.
*)

module R = Tree_sitter_run.Raw_tree

(* Disable warnings against unused variables *)
[@@@warning "-26-27"]

(* Disable warning against unused 'rec' *)
[@@@warning "-39"]

type env = unit

let token (env : env) (tok : Tree_sitter_run.Token.t) =
  R.Token tok

let blank (env : env) () =
  R.Tuple []

let map_imm_tok_choice_ul_ (env : env) (tok : CST.imm_tok_choice_ul_) =
  (* imm_tok_choice_ul_ *) token env tok

let map_range_op_name (env : env) (x : CST.range_op_name) =
  (match x with
  | `DOTDOT tok -> R.Case ("DOTDOT",
      (* ".." *) token env tok
    )
  | `DOTDOTSPACEDOTDOT tok -> R.Case ("DOTDOTSPACEDOTDOT",
      (* ".. .." *) token env tok
    )
  )

let map_imm_tok_choice_ul (env : env) (tok : CST.imm_tok_choice_ul) =
  (* imm_tok_choice_ul *) token env tok

let map_imm_tok_dquot (env : env) (tok : CST.imm_tok_dquot) =
  (* "\"" *) token env tok

let map_imm_tok_lpar (env : env) (tok : CST.imm_tok_lpar) =
  (* "(" *) token env tok

let map_quote_op_left (env : env) (x : CST.quote_op_left) =
  (match x with
  | `LTAT tok -> R.Case ("LTAT",
      (* "<@" *) token env tok
    )
  | `LTATAT tok -> R.Case ("LTATAT",
      (* "<@@" *) token env tok
    )
  )

let map_bitdigit_imm (env : env) (tok : CST.bitdigit_imm) =
  (* pattern [0-1] *) token env tok

let map_imm_tok_hash (env : env) (tok : CST.imm_tok_hash) =
  (* "#" *) token env tok

let map_pat_c3eb998 (env : env) (tok : CST.pat_c3eb998) =
  (* pattern "[_\\p{XID_Start}][_'\\p{XID_Continue}]*" *) token env tok

let map_imm_tok_squot (env : env) (tok : CST.imm_tok_squot) =
  (* "'" *) token env tok

let map_virtual_open_section (env : env) (tok : CST.virtual_open_section) =
  (* virtual_open_section *) token env tok

let map_pat_0b (env : env) (tok : CST.pat_0b) =
  (* pattern 0[bB] *) token env tok

let map_imm_tok_dquotdquotdquot (env : env) (tok : CST.imm_tok_dquotdquotdquot) =
  (* "\"\"\"" *) token env tok

let map_infix_or_prefix_op (env : env) (x : CST.infix_or_prefix_op) =
  (match x with
  | `PLUS tok -> R.Case ("PLUS",
      (* "+" *) token env tok
    )
  | `DASH tok -> R.Case ("DASH",
      (* "-" *) token env tok
    )
  | `PLUSDOT tok -> R.Case ("PLUSDOT",
      (* "+." *) token env tok
    )
  | `DASHDOT tok -> R.Case ("DASHDOT",
      (* "-." *) token env tok
    )
  | `PERC tok -> R.Case ("PERC",
      (* "%" *) token env tok
    )
  | `AMP tok -> R.Case ("AMP",
      (* "&" *) token env tok
    )
  | `AMPAMP tok -> R.Case ("AMPAMP",
      (* "&&" *) token env tok
    )
  )

let map_imm_tok_squotb (env : env) (tok : CST.imm_tok_squotb) =
  (* "'B" *) token env tok

let map_imm_tok_l (env : env) (tok : CST.imm_tok_l) =
  (* "l" *) token env tok

let map_imm_tok_s (env : env) (tok : CST.imm_tok_s) =
  (* "s" *) token env tok

let map_pat_9d988a2 (env : env) (tok : CST.pat_9d988a2) =
  (* pattern ``([^`\n\r\t])+`` *) token env tok

let map_pat_0x (env : env) (tok : CST.pat_0x) =
  (* pattern 0[xX] *) token env tok

let map_attribute_target (env : env) (x : CST.attribute_target) =
  (match x with
  | `Asse tok -> R.Case ("Asse",
      (* "assembly" *) token env tok
    )
  | `Module tok -> R.Case ("Module",
      (* "module" *) token env tok
    )
  | `Ret tok -> R.Case ("Ret",
      (* "return" *) token env tok
    )
  | `Field tok -> R.Case ("Field",
      (* "field" *) token env tok
    )
  | `Prop tok -> R.Case ("Prop",
      (* "property" *) token env tok
    )
  | `Param tok -> R.Case ("Param",
      (* "param" *) token env tok
    )
  | `Type tok -> R.Case ("Type",
      (* "type" *) token env tok
    )
  | `Cons tok -> R.Case ("Cons",
      (* "constructor" *) token env tok
    )
  | `Event tok -> R.Case ("Event",
      (* "event" *) token env tok
    )
  )

let map_imm_tok_lt (env : env) (tok : CST.imm_tok_lt) =
  (* "<" *) token env tok

let map_imm_tok_dot (env : env) (tok : CST.imm_tok_dot) =
  (* "." *) token env tok

let map_quote_op_right (env : env) (x : CST.quote_op_right) =
  (match x with
  | `ATGT tok -> R.Case ("ATGT",
      (* "@>" *) token env tok
    )
  | `ATATGT tok -> R.Case ("ATATGT",
      (* "@@>" *) token env tok
    )
  )

let map_digit_char_imm (env : env) (tok : CST.digit_char_imm) =
  (* pattern [0-9] *) token env tok

let map_block_comment_content (env : env) (tok : CST.block_comment_content) =
  (* block_comment_content *) token env tok

let map_imm_tok_pat_m (env : env) (tok : CST.imm_tok_pat_m) =
  (* pattern [Mm] *) token env tok

let map_imm_tok_f (env : env) (tok : CST.imm_tok_f) =
  (* "f" *) token env tok

let map_imm_tok_lf (env : env) (tok : CST.imm_tok_lf) =
  (* "lf" *) token env tok

let map_virtual_end_decl (env : env) (tok : CST.virtual_end_decl) =
  (* virtual_end_decl *) token env tok

let map_imm_tok_lbrack (env : env) (tok : CST.imm_tok_lbrack) =
  (* "[" *) token env tok

let map_simple_string_char (env : env) (tok : CST.simple_string_char) =
  (* pattern "[^\\t\\r\\u0008\\a\\f\\v\\\\\"]" *) token env tok

let map_virtual_end_section (env : env) (tok : CST.virtual_end_section) =
  (* virtual_end_section *) token env tok

let map_imm_tok_lf_ (env : env) (tok : CST.imm_tok_lf_) =
  (* "LF" *) token env tok

let map_simple_char_char (env : env) (tok : CST.simple_char_char) =
  (* pattern "[^\\n\\t\\r\\u0008\\a\\f\\v'\\\\]" *) token env tok

let map_imm_tok_l_ (env : env) (tok : CST.imm_tok_l_) =
  (* "L" *) token env tok

let map_imm_tok_y (env : env) (tok : CST.imm_tok_y) =
  (* "y" *) token env tok

let map_imm_tok_bslashu (env : env) (tok : CST.imm_tok_bslashu) =
  (* "\\U" *) token env tok

let map_imm_tok_un (env : env) (tok : CST.imm_tok_un) =
  (* "un" *) token env tok

let map_imm_tok_dquotb (env : env) (tok : CST.imm_tok_dquotb) =
  (* "\"B" *) token env tok

let map_imm_tok_pat_35b22f4 (env : env) (tok : CST.imm_tok_pat_35b22f4) =
  (* pattern [QRZING] *) token env tok

let map_imm_tok_bslash (env : env) (tok : CST.imm_tok_bslash) =
  (* "\\" *) token env tok

let map_imm_tok_uy (env : env) (tok : CST.imm_tok_uy) =
  (* "uy" *) token env tok

let map_anon_choice_HAT_710cb5b (env : env) (x : CST.anon_choice_HAT_710cb5b) =
  (match x with
  | `HAT tok -> R.Case ("HAT",
      (* "^" *) token env tok
    )
  | `SQUOT tok -> R.Case ("SQUOT",
      (* "'" *) token env tok
    )
  )

let map_pat_0o (env : env) (tok : CST.pat_0o) =
  (* pattern 0[oO] *) token env tok

let map_imm_tok_us (env : env) (tok : CST.imm_tok_us) =
  (* "us" *) token env tok

let map_pat_213dc3e (env : env) (tok : CST.pat_213dc3e) =
  (* pattern [0-9] *) token env tok

let map_escape_char (env : env) (tok : CST.escape_char) =
  (* pattern "\\\\[\"\\'ntbrafv]" *) token env tok

let map_imm_tok_n (env : env) (tok : CST.imm_tok_n) =
  (* "n" *) token env tok

let map_octaldigit_imm (env : env) (tok : CST.octaldigit_imm) =
  (* pattern [0-7] *) token env tok

let map_hex_digit_imm (env : env) (tok : CST.hex_digit_imm) =
  (* pattern [0-9a-fA-F] *) token env tok

let map_pat_0257738 (env : env) (tok : CST.pat_0257738) =
  (* pattern [!%&*+-./<=>@^|~][!%&*+-./<=>@^|~?]* *) token env tok

let map_non_escape_char (env : env) (tok : CST.non_escape_char) =
  (* pattern "\\\\[^\"\\'ntbrafv]" *) token env tok

let map_access_modifier (env : env) (x : CST.access_modifier) =
  (match x with
  | `Priv tok -> R.Case ("Priv",
      (* "private" *) token env tok
    )
  | `Inte tok -> R.Case ("Inte",
      (* "internal" *) token env tok
    )
  | `Public tok -> R.Case ("Public",
      (* "public" *) token env tok
    )
  )

let map_imm_tok_bsla (env : env) (tok : CST.imm_tok_bsla) =
  (* "\\u" *) token env tok

let map_float_ (env : env) (tok : CST.float_) =
  (* float *) token env tok

let map_imm_tok_pat_684220d (env : env) (tok : CST.imm_tok_pat_684220d) =
  (* pattern "[^'\\\\]" *) token env tok

let map_line_comment (env : env) (tok : CST.line_comment) =
  (* line_comment *) token env tok

let map_identifier (env : env) (x : CST.identifier) =
  (match x with
  | `Pat_c3eb998 x -> R.Case ("Pat_c3eb998",
      map_pat_c3eb998 env x
    )
  | `Pat_9d988a2 x -> R.Case ("Pat_9d988a2",
      map_pat_9d988a2 env x
    )
  )

let map_block_comment (env : env) ((v1, v2, v3) : CST.block_comment) =
  let v1 = (* "(*" *) token env v1 in
  let v2 = (* block_comment_content *) token env v2 in
  let v3 = (* "*)" *) token env v3 in
  R.Tuple [v1; v2; v3]

let map_trigraph (env : env) ((v1, v2, v3, v4) : CST.trigraph) =
  let v1 = map_imm_tok_bslash env v1 in
  let v2 = (* pattern [0-9] *) token env v2 in
  let v3 = (* pattern [0-9] *) token env v3 in
  let v4 = (* pattern [0-9] *) token env v4 in
  R.Tuple [v1; v2; v3; v4]

let map_int_ (env : env) ((v1, v2) : CST.int_) =
  let v1 = map_pat_213dc3e env v1 in
  let v2 =
    R.List (List.map (token env (* pattern [0-9] *)) v2)
  in
  R.Tuple [v1; v2]

let map_xint (env : env) (x : CST.xint) =
  (match x with
  | `Pat_0x_rep1_hex_digit_imm (v1, v2) -> R.Case ("Pat_0x_rep1_hex_digit_imm",
      let v1 = map_pat_0x env v1 in
      let v2 =
        R.List (List.map (token env (* pattern [0-9a-fA-F] *)) v2)
      in
      R.Tuple [v1; v2]
    )
  | `Pat_0o_rep1_octa_imm (v1, v2) -> R.Case ("Pat_0o_rep1_octa_imm",
      let v1 = map_pat_0o env v1 in
      let v2 =
        R.List (List.map (token env (* pattern [0-7] *)) v2)
      in
      R.Tuple [v1; v2]
    )
  | `Pat_0b_rep1_bitd_imm (v1, v2) -> R.Case ("Pat_0b_rep1_bitd_imm",
      let v1 = map_pat_0b env v1 in
      let v2 =
        R.List (List.map (token env (* pattern [0-1] *)) v2)
      in
      R.Tuple [v1; v2]
    )
  )

let map_symbolic_op (env : env) (x : CST.symbolic_op) =
  (match x with
  | `QMARK tok -> R.Case ("QMARK",
      (* "?" *) token env tok
    )
  | `QMARKLTDASH tok -> R.Case ("QMARKLTDASH",
      (* "?<-" *) token env tok
    )
  | `Pat_0257738 x -> R.Case ("Pat_0257738",
      map_pat_0257738 env x
    )
  | `Choice_LTAT x -> R.Case ("Choice_LTAT",
      map_quote_op_left env x
    )
  | `Choice_ATGT x -> R.Case ("Choice_ATGT",
      map_quote_op_right env x
    )
  )

let map_verbatim_string_char (env : env) (x : CST.verbatim_string_char) =
  (match x with
  | `Simple_str_char tok -> R.Case ("Simple_str_char",
      (* pattern "[^\\t\\r\\u0008\\a\\f\\v\\\\\"]" *) token env tok
    )
  | `Non_esc_char tok -> R.Case ("Non_esc_char",
      (* pattern "\\\\[^\"\\'ntbrafv]" *) token env tok
    )
  | `BSLASH tok -> R.Case ("BSLASH",
      (* "\\" *) token env tok
    )
  )

let map_unicodegraph_short (env : env) ((v1, v2, v3, v4, v5) : CST.unicodegraph_short) =
  let v1 = map_imm_tok_bsla env v1 in
  let v2 = (* pattern [0-9a-fA-F] *) token env v2 in
  let v3 = (* pattern [0-9a-fA-F] *) token env v3 in
  let v4 = (* pattern [0-9a-fA-F] *) token env v4 in
  let v5 = (* pattern [0-9a-fA-F] *) token env v5 in
  R.Tuple [v1; v2; v3; v4; v5]

let map_simple_or_escape_char (env : env) (x : CST.simple_or_escape_char) =
  (match x with
  | `Esc_char tok -> R.Case ("Esc_char",
      (* pattern "\\\\[\"\\'ntbrafv]" *) token env tok
    )
  | `Imm_tok_pat_684220d x -> R.Case ("Imm_tok_pat_684220d",
      map_imm_tok_pat_684220d env x
    )
  )

let map_argument_name_spec (env : env) ((v1, v2, v3) : CST.argument_name_spec) =
  let v1 =
    (match v1 with
    | Some tok -> R.Option (Some (
        (* "?" *) token env tok
      ))
    | None -> R.Option None)
  in
  let v2 = map_identifier env v2 in
  let v3 = (* ":" *) token env v3 in
  R.Tuple [v1; v2; v3]

let map_active_pattern_op_name (env : env) (x : CST.active_pattern_op_name) =
  (match x with
  | `BAR_id_rep1_BAR_id_BAR (v1, v2, v3, v4) -> R.Case ("BAR_id_rep1_BAR_id_BAR",
      let v1 = (* "|" *) token env v1 in
      let v2 = map_identifier env v2 in
      let v3 =
        R.List (List.map (fun (v1, v2) ->
          let v1 = (* "|" *) token env v1 in
          let v2 = map_identifier env v2 in
          R.Tuple [v1; v2]
        ) v3)
      in
      let v4 = (* "|" *) token env v4 in
      R.Tuple [v1; v2; v3; v4]
    )
  | `BAR_id_rep_BAR_id_BAR___BAR (v1, v2, v3, v4, v5, v6) -> R.Case ("BAR_id_rep_BAR_id_BAR___BAR",
      let v1 = (* "|" *) token env v1 in
      let v2 = map_identifier env v2 in
      let v3 =
        R.List (List.map (fun (v1, v2) ->
          let v1 = (* "|" *) token env v1 in
          let v2 = map_identifier env v2 in
          R.Tuple [v1; v2]
        ) v3)
      in
      let v4 = (* "|" *) token env v4 in
      let v5 = (* "_" *) token env v5 in
      let v6 = (* "|" *) token env v6 in
      R.Tuple [v1; v2; v3; v4; v5; v6]
    )
  )

let map_property_or_ident (env : env) (x : CST.property_or_ident) =
  (match x with
  | `Id_DOT_id (v1, v2, v3) -> R.Case ("Id_DOT_id",
      let v1 = map_identifier env v1 in
      let v2 = (* "." *) token env v2 in
      let v3 = map_identifier env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Id x -> R.Case ("Id",
      map_identifier env x
    )
  )

let map_as_defn (env : env) ((v1, v2) : CST.as_defn) =
  let v1 = (* "as" *) token env v1 in
  let v2 = map_identifier env v2 in
  R.Tuple [v1; v2]

let map_long_identifier (env : env) ((v1, v2) : CST.long_identifier) =
  let v1 = map_identifier env v1 in
  let v2 =
    R.List (List.map (fun (v1, v2) ->
      let v1 = (* "." *) token env v1 in
      let v2 = map_identifier env v2 in
      R.Tuple [v1; v2]
    ) v2)
  in
  R.Tuple [v1; v2]

let map_type_argument (env : env) (x : CST.type_argument) =
  (match x with
  | `X__ tok -> R.Case ("X__",
      (* "_" *) token env tok
    )
  | `SQUOT_id (v1, v2) -> R.Case ("SQUOT_id",
      let v1 = (* "'" *) token env v1 in
      let v2 = map_identifier env v2 in
      R.Tuple [v1; v2]
    )
  | `HAT_id (v1, v2) -> R.Case ("HAT_id",
      let v1 = (* "^" *) token env v1 in
      let v2 = map_identifier env v2 in
      R.Tuple [v1; v2]
    )
  )

let map_static_type_argument (env : env) (x : CST.static_type_argument) =
  (match x with
  | `Choice_HAT_id (v1, v2) -> R.Case ("Choice_HAT_id",
      let v1 = map_anon_choice_HAT_710cb5b env v1 in
      let v2 = map_identifier env v2 in
      R.Tuple [v1; v2]
    )
  | `Choice_HAT_id_rep_or_choice_HAT_id (v1, v2, v3) -> R.Case ("Choice_HAT_id_rep_or_choice_HAT_id",
      let v1 = map_anon_choice_HAT_710cb5b env v1 in
      let v2 = map_identifier env v2 in
      let v3 =
        R.List (List.map (fun (v1, v2, v3) ->
          let v1 = (* "or" *) token env v1 in
          let v2 = map_anon_choice_HAT_710cb5b env v2 in
          let v3 = map_identifier env v3 in
          R.Tuple [v1; v2; v3]
        ) v3)
      in
      R.Tuple [v1; v2; v3]
    )
  )

let map_anon_choice_int_06dcc46 (env : env) (x : CST.anon_choice_int_06dcc46) =
  (match x with
  | `Int x -> R.Case ("Int",
      map_int_ env x
    )
  | `Xint x -> R.Case ("Xint",
      map_xint env x
    )
  )

let map_ieee32 (env : env) (x : CST.ieee32) =
  (match x with
  | `Float_imm_tok_f (v1, v2) -> R.Case ("Float_imm_tok_f",
      let v1 = (* float *) token env v1 in
      let v2 = map_imm_tok_f env v2 in
      R.Tuple [v1; v2]
    )
  | `Xint_imm_tok_lf (v1, v2) -> R.Case ("Xint_imm_tok_lf",
      let v1 = map_xint env v1 in
      let v2 = map_imm_tok_lf env v2 in
      R.Tuple [v1; v2]
    )
  )

let map_prefix_op (env : env) (x : CST.prefix_op) =
  (match x with
  | `Choice_PLUS x -> R.Case ("Choice_PLUS",
      map_infix_or_prefix_op env x
    )
  | `Rep1_TILDE xs -> R.Case ("Rep1_TILDE",
      R.List (List.map (token env (* "~" *)) xs)
    )
  | `Symb_op x -> R.Case ("Symb_op",
      map_symbolic_op env x
    )
  )

let map_infix_op (env : env) (x : CST.infix_op) =
  (match x with
  | `Choice_PLUS x -> R.Case ("Choice_PLUS",
      map_infix_or_prefix_op env x
    )
  | `Symb_op x -> R.Case ("Symb_op",
      map_symbolic_op env x
    )
  | `BARBAR tok -> R.Case ("BARBAR",
      (* "||" *) token env tok
    )
  | `EQ tok -> R.Case ("EQ",
      (* "=" *) token env tok
    )
  | `BANGEQ tok -> R.Case ("BANGEQ",
      (* "!=" *) token env tok
    )
  | `COLONEQ tok -> R.Case ("COLONEQ",
      (* ":=" *) token env tok
    )
  | `COLONCOLON tok -> R.Case ("COLONCOLON",
      (* "::" *) token env tok
    )
  | `DOLLAR tok -> R.Case ("DOLLAR",
      (* "$" *) token env tok
    )
  | `Or tok -> R.Case ("Or",
      (* "or" *) token env tok
    )
  | `QMARK tok -> R.Case ("QMARK",
      (* "?" *) token env tok
    )
  )

let map_string_char (env : env) (x : CST.string_char) =
  (match x with
  | `Simple_str_char tok -> R.Case ("Simple_str_char",
      (* pattern "[^\\t\\r\\u0008\\a\\f\\v\\\\\"]" *) token env tok
    )
  | `Esc_char tok -> R.Case ("Esc_char",
      (* pattern "\\\\[\"\\'ntbrafv]" *) token env tok
    )
  | `Non_esc_char tok -> R.Case ("Non_esc_char",
      (* pattern "\\\\[^\"\\'ntbrafv]" *) token env tok
    )
  | `Trig x -> R.Case ("Trig",
      map_trigraph env x
    )
  | `Unic_short x -> R.Case ("Unic_short",
      map_unicodegraph_short env x
    )
  | `Unic_long (v1, v2, v3, v4, v5, v6, v7, v8, v9) -> R.Case ("Unic_long",
      let v1 = map_imm_tok_bslashu env v1 in
      let v2 = (* pattern [0-9a-fA-F] *) token env v2 in
      let v3 = (* pattern [0-9a-fA-F] *) token env v3 in
      let v4 = (* pattern [0-9a-fA-F] *) token env v4 in
      let v5 = (* pattern [0-9a-fA-F] *) token env v5 in
      let v6 = (* pattern [0-9a-fA-F] *) token env v6 in
      let v7 = (* pattern [0-9a-fA-F] *) token env v7 in
      let v8 = (* pattern [0-9a-fA-F] *) token env v8 in
      let v9 = (* pattern [0-9a-fA-F] *) token env v9 in
      R.Tuple [v1; v2; v3; v4; v5; v6; v7; v8; v9]
    )
  )

let map_char_char (env : env) (x : CST.char_char) =
  (match x with
  | `Simple_char_char tok -> R.Case ("Simple_char_char",
      (* pattern "[^\\n\\t\\r\\u0008\\a\\f\\v'\\\\]" *) token env tok
    )
  | `Esc_char tok -> R.Case ("Esc_char",
      (* pattern "\\\\[\"\\'ntbrafv]" *) token env tok
    )
  | `Trig x -> R.Case ("Trig",
      map_trigraph env x
    )
  | `Unic_short x -> R.Case ("Unic_short",
      map_unicodegraph_short env x
    )
  )

let map_op_name (env : env) (x : CST.op_name) =
  (match x with
  | `Symb_op x -> R.Case ("Symb_op",
      map_symbolic_op env x
    )
  | `Range_op_name x -> R.Case ("Range_op_name",
      map_range_op_name env x
    )
  | `Active_pat_op_name x -> R.Case ("Active_pat_op_name",
      map_active_pattern_op_name env x
    )
  )

let rec map_string_elem (env : env) (x : CST.string_elem) =
  (match x with
  | `Str_char x -> R.Case ("Str_char",
      map_string_char env x
    )
  | `BSLASH_str_elem (v1, v2) -> R.Case ("BSLASH_str_elem",
      let v1 = (* "\\" *) token env v1 in
      let v2 = map_string_elem env v2 in
      R.Tuple [v1; v2]
    )
  )

let map_string_ (env : env) ((v1, v2, v3) : CST.string_) =
  let v1 = (* "\"" *) token env v1 in
  let v2 = R.List (List.map (map_string_char env) v2) in
  let v3 = map_imm_tok_dquot env v3 in
  R.Tuple [v1; v2; v3]

let map_identifier_or_op (env : env) (x : CST.identifier_or_op) =
  (match x with
  | `Id x -> R.Case ("Id",
      map_identifier env x
    )
  | `LPAR_op_name_RPAR (v1, v2, v3) -> R.Case ("LPAR_op_name_RPAR",
      let v1 = (* "(" *) token env v1 in
      let v2 = map_op_name env v2 in
      let v3 = (* ")" *) token env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `LPARSTARRPAR tok -> R.Case ("LPARSTARRPAR",
      (* "(*)" *) token env tok
    )
  )

let map_fsi_directive_decl (env : env) (x : CST.fsi_directive_decl) =
  (match x with
  | `HASHr_rep_str (v1, v2) -> R.Case ("HASHr_rep_str",
      let v1 = (* "#r" *) token env v1 in
      let v2 = R.List (List.map (map_string_ env) v2) in
      R.Tuple [v1; v2]
    )
  | `HASH_rep_str (v1, v2) -> R.Case ("HASH_rep_str",
      let v1 = (* "#load" *) token env v1 in
      let v2 = R.List (List.map (map_string_ env) v2) in
      R.Tuple [v1; v2]
    )
  )

let map_const (env : env) (x : CST.const) =
  (match x with
  | `Sbyte (v1, v2) -> R.Case ("Sbyte",
      let v1 = map_anon_choice_int_06dcc46 env v1 in
      let v2 = map_imm_tok_y env v2 in
      R.Tuple [v1; v2]
    )
  | `Int16 (v1, v2) -> R.Case ("Int16",
      let v1 = map_anon_choice_int_06dcc46 env v1 in
      let v2 = map_imm_tok_s env v2 in
      R.Tuple [v1; v2]
    )
  | `Int32 (v1, v2) -> R.Case ("Int32",
      let v1 = map_anon_choice_int_06dcc46 env v1 in
      let v2 = map_imm_tok_l env v2 in
      R.Tuple [v1; v2]
    )
  | `Int64 (v1, v2) -> R.Case ("Int64",
      let v1 = map_anon_choice_int_06dcc46 env v1 in
      let v2 = map_imm_tok_l_ env v2 in
      R.Tuple [v1; v2]
    )
  | `Byte_40ea57d (v1, v2) -> R.Case ("Byte_40ea57d",
      let v1 = map_anon_choice_int_06dcc46 env v1 in
      let v2 = map_imm_tok_uy env v2 in
      R.Tuple [v1; v2]
    )
  | `Uint16 (v1, v2) -> R.Case ("Uint16",
      let v1 = map_anon_choice_int_06dcc46 env v1 in
      let v2 = map_imm_tok_us env v2 in
      R.Tuple [v1; v2]
    )
  | `Uint32 (v1, v2) -> R.Case ("Uint32",
      let v1 = map_anon_choice_int_06dcc46 env v1 in
      let v2 = map_imm_tok_choice_ul env v2 in
      R.Tuple [v1; v2]
    )
  | `Int x -> R.Case ("Int",
      map_int_ env x
    )
  | `Nati (v1, v2) -> R.Case ("Nati",
      let v1 = map_anon_choice_int_06dcc46 env v1 in
      let v2 = map_imm_tok_n env v2 in
      R.Tuple [v1; v2]
    )
  | `Unat (v1, v2) -> R.Case ("Unat",
      let v1 = map_anon_choice_int_06dcc46 env v1 in
      let v2 = map_imm_tok_un env v2 in
      R.Tuple [v1; v2]
    )
  | `Deci (v1, v2) -> R.Case ("Deci",
      let v1 =
        (match v1 with
        | `Float tok -> R.Case ("Float",
            (* float *) token env tok
          )
        | `Int x -> R.Case ("Int",
            map_int_ env x
          )
        )
      in
      let v2 = map_imm_tok_pat_m env v2 in
      R.Tuple [v1; v2]
    )
  | `Uint64 (v1, v2) -> R.Case ("Uint64",
      let v1 = map_anon_choice_int_06dcc46 env v1 in
      let v2 = map_imm_tok_choice_ul_ env v2 in
      R.Tuple [v1; v2]
    )
  | `Ieee32 x -> R.Case ("Ieee32",
      map_ieee32 env x
    )
  | `Ieee64 (v1, v2) -> R.Case ("Ieee64",
      let v1 = map_xint env v1 in
      let v2 = map_imm_tok_lf_ env v2 in
      R.Tuple [v1; v2]
    )
  | `Bignum (v1, v2) -> R.Case ("Bignum",
      let v1 = map_int_ env v1 in
      let v2 = map_imm_tok_pat_35b22f4 env v2 in
      R.Tuple [v1; v2]
    )
  | `Char (v1, v2, v3) -> R.Case ("Char",
      let v1 = (* "'" *) token env v1 in
      let v2 = map_char_char env v2 in
      let v3 = map_imm_tok_squot env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Str x -> R.Case ("Str",
      map_string_ env x
    )
  | `Verb_str (v1, v2, v3) -> R.Case ("Verb_str",
      let v1 = (* "@\"" *) token env v1 in
      let v2 =
        R.List (List.map (map_verbatim_string_char env) v2)
      in
      let v3 = map_imm_tok_dquot env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Triple_quoted_str (v1, v2, v3) -> R.Case ("Triple_quoted_str",
      let v1 = (* "\"\"\"" *) token env v1 in
      let v2 =
        R.List (List.map (map_simple_or_escape_char env) v2)
      in
      let v3 = map_imm_tok_dquotdquotdquot env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Byte_575c2e8 (v1, v2, v3) -> R.Case ("Byte_575c2e8",
      let v1 = (* "\"" *) token env v1 in
      let v2 = R.List (List.map (map_string_char env) v2) in
      let v3 = map_imm_tok_dquotb env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Verb_byte (v1, v2, v3) -> R.Case ("Verb_byte",
      let v1 = (* "@\"" *) token env v1 in
      let v2 =
        R.List (List.map (map_verbatim_string_char env) v2)
      in
      let v3 = map_imm_tok_dquotb env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Byte_b1b1cb0 (v1, v2, v3) -> R.Case ("Byte_b1b1cb0",
      let v1 = (* "'" *) token env v1 in
      let v2 = map_char_char env v2 in
      let v3 = map_imm_tok_squotb env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `False tok -> R.Case ("False",
      (* "false" *) token env tok
    )
  | `True tok -> R.Case ("True",
      (* "true" *) token env tok
    )
  | `Unit (v1, v2, v3) -> R.Case ("Unit",
      let v1 = (* "(" *) token env v1 in
      let v2 =
        (match v2 with
        | Some (v1, v2) -> R.Option (Some (
            let v1 = (* virtual_open_section *) token env v1 in
            let v2 = (* virtual_end_section *) token env v2 in
            R.Tuple [v1; v2]
          ))
        | None -> R.Option None)
      in
      let v3 = (* ")" *) token env v3 in
      R.Tuple [v1; v2; v3]
    )
  )

let map_long_identifier_or_op (env : env) (x : CST.long_identifier_or_op) =
  (match x with
  | `Long_id x -> R.Case ("Long_id",
      map_long_identifier env x
    )
  | `Long_id_DOT_id_or_op (v1, v2, v3) -> R.Case ("Long_id_DOT_id_or_op",
      let v1 = map_long_identifier env v1 in
      let v2 = (* "." *) token env v2 in
      let v3 = map_identifier_or_op env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Id_or_op x -> R.Case ("Id_or_op",
      map_identifier_or_op env x
    )
  )

let map_pattern_param (env : env) (x : CST.pattern_param) =
  (match x with
  | `Const x -> R.Case ("Const",
      map_const env x
    )
  | `Long_id x -> R.Case ("Long_id",
      map_long_identifier env x
    )
  | `Null tok -> R.Case ("Null",
      (* "null" *) token env tok
    )
  )

let map_enum_type_case (env : env) ((v1, v2, v3) : CST.enum_type_case) =
  let v1 = map_identifier env v1 in
  let v2 = (* "=" *) token env v2 in
  let v3 = map_const env v3 in
  R.Tuple [v1; v2; v3]

let rec map_additional_constr_defn (env : env) ((v1, v2, v3, v4, v5) : CST.additional_constr_defn) =
  let v1 =
    (match v1 with
    | Some x -> R.Option (Some (
        map_access_modifier env x
      ))
    | None -> R.Option None)
  in
  let v2 = (* "new" *) token env v2 in
  let v3 = map_pattern env v3 in
  let v4 = map_as_defn env v4 in
  let v5 = (* "=" *) token env v5 in
  R.Tuple [v1; v2; v3; v4; v5]

and map_argument_patterns (env : env) (xs : CST.argument_patterns) =
  R.List (List.map (map_atomic_pattern env) xs)

and map_array_pattern (env : env) (x : CST.array_pattern) =
  (match x with
  | `LBRACKBAR_BARRBRACK (v1, v2) -> R.Case ("LBRACKBAR_BARRBRACK",
      let v1 = (* "[|" *) token env v1 in
      let v2 = (* "|]" *) token env v2 in
      R.Tuple [v1; v2]
    )
  | `LBRACKBAR_pat_rep_SEMI_pat_BARRBRACK (v1, v2, v3, v4) -> R.Case ("LBRACKBAR_pat_rep_SEMI_pat_BARRBRACK",
      let v1 = (* "[|" *) token env v1 in
      let v2 = map_pattern env v2 in
      let v3 =
        R.List (List.map (fun (v1, v2) ->
          let v1 = (* ";" *) token env v1 in
          let v2 = map_pattern env v2 in
          R.Tuple [v1; v2]
        ) v3)
      in
      let v4 = (* "|]" *) token env v4 in
      R.Tuple [v1; v2; v3; v4]
    )
  )

and map_atomic_pattern (env : env) (x : CST.atomic_pattern) =
  (match x with
  | `Null tok -> R.Case ("Null",
      (* "null" *) token env tok
    )
  | `X__ tok -> R.Case ("X__",
      (* "_" *) token env tok
    )
  | `Const x -> R.Case ("Const",
      map_const env x
    )
  | `Long_id x -> R.Case ("Long_id",
      map_long_identifier env x
    )
  | `List_pat x -> R.Case ("List_pat",
      map_list_pattern env x
    )
  | `Record_pat x -> R.Case ("Record_pat",
      map_record_pattern env x
    )
  | `Array_pat x -> R.Case ("Array_pat",
      map_array_pattern env x
    )
  | `LPAR_virt_open_sect_pat_virt_end_sect_RPAR x -> R.Case ("LPAR_virt_open_sect_pat_virt_end_sect_RPAR",
      map_paren_pattern env x
    )
  )

and map_attribute (env : env) ((v1, v2) : CST.attribute) =
  let v1 =
    (match v1 with
    | Some (v1, v2) -> R.Option (Some (
        let v1 = map_attribute_target env v1 in
        let v2 = (* ":" *) token env v2 in
        R.Tuple [v1; v2]
      ))
    | None -> R.Option None)
  in
  let v2 = map_object_construction env v2 in
  R.Tuple [v1; v2]

and map_attribute_set (env : env) ((v1, v2, v3, v4) : CST.attribute_set) =
  let v1 = (* "[<" *) token env v1 in
  let v2 = map_attribute env v2 in
  let v3 =
    R.List (List.map (fun (v1, v2) ->
      let v1 = (* ";" *) token env v1 in
      let v2 = map_attribute env v2 in
      R.Tuple [v1; v2]
    ) v3)
  in
  let v4 = (* ">]" *) token env v4 in
  R.Tuple [v1; v2; v3; v4]

and map_attributes (env : env) (xs : CST.attributes) =
  R.List (List.map (map_attribute_set env) xs)

and map_base_call (env : env) (x : CST.base_call) =
  (match x with
  | `Obj_cons x -> R.Case ("Obj_cons",
      map_object_construction env x
    )
  | `Obj_cons_as_id (v1, v2, v3) -> R.Case ("Obj_cons_as_id",
      let v1 = map_object_construction env v1 in
      let v2 = (* "as" *) token env v2 in
      let v3 = map_identifier env v3 in
      R.Tuple [v1; v2; v3]
    )
  )

and map_comp_or_range_expression (env : env) (x : CST.comp_or_range_expression) =
  (match x with
  | `Expres x -> R.Case ("Expres",
      map_expressions env x
    )
  | `Short_comp_exp (v1, v2, v3, v4, v5, v6) -> R.Case ("Short_comp_exp",
      let v1 = (* "for" *) token env v1 in
      let v2 = map_pattern env v2 in
      let v3 = (* "in" *) token env v3 in
      let v4 = map_expression_or_range env v4 in
      let v5 = (* "->" *) token env v5 in
      let v6 = map_expressions env v6 in
      R.Tuple [v1; v2; v3; v4; v5; v6]
    )
  )

and map_constraint_ (env : env) (x : CST.constraint_) =
  (match x with
  | `Type_arg_COLONGT_type (v1, v2, v3) -> R.Case ("Type_arg_COLONGT_type",
      let v1 = map_type_argument env v1 in
      let v2 = (* ":>" *) token env v2 in
      let v3 = map_type_ env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Type_arg_COLON_null (v1, v2, v3) -> R.Case ("Type_arg_COLON_null",
      let v1 = map_type_argument env v1 in
      let v2 = (* ":" *) token env v2 in
      let v3 = (* "null" *) token env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Static_type_arg_COLON_LPAR_trait_member_cons_RPAR (v1, v2, v3, v4, v5) -> R.Case ("Static_type_arg_COLON_LPAR_trait_member_cons_RPAR",
      let v1 = map_static_type_argument env v1 in
      let v2 = (* ":" *) token env v2 in
      let v3 = (* "(" *) token env v3 in
      let v4 = map_trait_member_constraint env v4 in
      let v5 = (* ")" *) token env v5 in
      R.Tuple [v1; v2; v3; v4; v5]
    )
  | `Type_arg_COLON_LPAR_new_COLON_unit_DASHGT_SQUOTT_RPAR (v1, v2, v3, v4, v5, v6, v7, v8, v9) -> R.Case ("Type_arg_COLON_LPAR_new_COLON_unit_DASHGT_SQUOTT_RPAR",
      let v1 = map_type_argument env v1 in
      let v2 = (* ":" *) token env v2 in
      let v3 = (* "(" *) token env v3 in
      let v4 = (* "new" *) token env v4 in
      let v5 = (* ":" *) token env v5 in
      let v6 = (* "unit" *) token env v6 in
      let v7 = (* "->" *) token env v7 in
      let v8 = (* "'T" *) token env v8 in
      let v9 = (* ")" *) token env v9 in
      R.Tuple [v1; v2; v3; v4; v5; v6; v7; v8; v9]
    )
  | `Type_arg_COLON_struct (v1, v2, v3) -> R.Case ("Type_arg_COLON_struct",
      let v1 = map_type_argument env v1 in
      let v2 = (* ":" *) token env v2 in
      let v3 = (* "struct" *) token env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Type_arg_COLON_not_struct (v1, v2, v3, v4) -> R.Case ("Type_arg_COLON_not_struct",
      let v1 = map_type_argument env v1 in
      let v2 = (* ":" *) token env v2 in
      let v3 = (* "not" *) token env v3 in
      let v4 = (* "struct" *) token env v4 in
      R.Tuple [v1; v2; v3; v4]
    )
  | `Type_arg_COLON_enum_LT_type_GT (v1, v2, v3, v4, v5, v6) -> R.Case ("Type_arg_COLON_enum_LT_type_GT",
      let v1 = map_type_argument env v1 in
      let v2 = (* ":" *) token env v2 in
      let v3 = (* "enum" *) token env v3 in
      let v4 = (* "<" *) token env v4 in
      let v5 = map_type_ env v5 in
      let v6 = (* ">" *) token env v6 in
      R.Tuple [v1; v2; v3; v4; v5; v6]
    )
  | `Type_arg_COLON_unma (v1, v2, v3) -> R.Case ("Type_arg_COLON_unma",
      let v1 = map_type_argument env v1 in
      let v2 = (* ":" *) token env v2 in
      let v3 = (* "unmanaged" *) token env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Type_arg_COLON_equa (v1, v2, v3) -> R.Case ("Type_arg_COLON_equa",
      let v1 = map_type_argument env v1 in
      let v2 = (* ":" *) token env v2 in
      let v3 = (* "equality" *) token env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Type_arg_COLON_comp (v1, v2, v3) -> R.Case ("Type_arg_COLON_comp",
      let v1 = map_type_argument env v1 in
      let v2 = (* ":" *) token env v2 in
      let v3 = (* "comparison" *) token env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Type_arg_COLON_dele_LT_type_COMMA_type_GT (v1, v2, v3, v4, v5, v6, v7, v8) -> R.Case ("Type_arg_COLON_dele_LT_type_COMMA_type_GT",
      let v1 = map_type_argument env v1 in
      let v2 = (* ":" *) token env v2 in
      let v3 = (* "delegate" *) token env v3 in
      let v4 = (* "<" *) token env v4 in
      let v5 = map_type_ env v5 in
      let v6 = (* "," *) token env v6 in
      let v7 = map_type_ env v7 in
      let v8 = (* ">" *) token env v8 in
      R.Tuple [v1; v2; v3; v4; v5; v6; v7; v8]
    )
  )

and map_elif_expression (env : env) ((v1, v2, v3, v4, v5, v6) : CST.elif_expression) =
  let v1 = (* "elif" *) token env v1 in
  let v2 = map_expression_inner env v2 in
  let v3 = (* "then" *) token env v3 in
  let v4 = (* virtual_open_section *) token env v4 in
  let v5 = map_expressions env v5 in
  let v6 = (* virtual_end_section *) token env v6 in
  R.Tuple [v1; v2; v3; v4; v5; v6]

and map_else_expression (env : env) ((v1, v2, v3, v4) : CST.else_expression) =
  let v1 = (* "else" *) token env v1 in
  let v2 = (* virtual_open_section *) token env v2 in
  let v3 = map_expressions env v3 in
  let v4 = (* virtual_end_section *) token env v4 in
  R.Tuple [v1; v2; v3; v4]

and map_expression_inner (env : env) (x : CST.expression_inner) =
  (match x with
  | `Line_comm tok -> R.Case ("Line_comm",
      (* line_comment *) token env tok
    )
  | `Blk_comm x -> R.Case ("Blk_comm",
      map_block_comment env x
    )
  | `Const x -> R.Case ("Const",
      map_const env x
    )
  | `Paren_exp (v1, v2, v3, v4, v5) -> R.Case ("Paren_exp",
      let v1 = (* "(" *) token env v1 in
      let v2 = (* virtual_open_section *) token env v2 in
      let v3 = map_expressions env v3 in
      let v4 = (* virtual_end_section *) token env v4 in
      let v5 = (* ")" *) token env v5 in
      R.Tuple [v1; v2; v3; v4; v5]
    )
  | `Begin_end_exp (v1, v2, v3) -> R.Case ("Begin_end_exp",
      let v1 = (* "begin" *) token env v1 in
      let v2 = map_expressions env v2 in
      let v3 = (* "end" *) token env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Long_id_or_op x -> R.Case ("Long_id_or_op",
      map_long_identifier_or_op env x
    )
  | `Dot_exp (v1, v2, v3) -> R.Case ("Dot_exp",
      let v1 = map_expression_inner env v1 in
      let v2 = map_imm_tok_dot env v2 in
      let v3 = map_long_identifier_or_op env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Typed_exp (v1, v2, v3, v4) -> R.Case ("Typed_exp",
      let v1 = map_expression_inner env v1 in
      let v2 = map_imm_tok_lt env v2 in
      let v3 =
        (match v3 with
        | Some x -> R.Option (Some (
            map_types env x
          ))
        | None -> R.Option None)
      in
      let v4 = (* ">" *) token env v4 in
      R.Tuple [v1; v2; v3; v4]
    )
  | `Infix_exp (v1, v2, v3) -> R.Case ("Infix_exp",
      let v1 = map_expression_inner env v1 in
      let v2 = map_infix_op env v2 in
      let v3 = map_expression_inner env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Index_exp (v1, v2, v3, v4, v5, v6, v7) -> R.Case ("Index_exp",
      let v1 = map_expression_inner env v1 in
      let v2 =
        (match v2 with
        | Some x -> R.Option (Some (
            map_imm_tok_dot env x
          ))
        | None -> R.Option None)
      in
      let v3 = map_imm_tok_lbrack env v3 in
      let v4 = (* virtual_open_section *) token env v4 in
      let v5 =
        (match v5 with
        | `Expres x -> R.Case ("Expres",
            map_expressions env x
          )
        | `Slice_ranges x -> R.Case ("Slice_ranges",
            map_slice_ranges env x
          )
        )
      in
      let v6 = (* virtual_end_section *) token env v6 in
      let v7 = (* "]" *) token env v7 in
      R.Tuple [v1; v2; v3; v4; v5; v6; v7]
    )
  | `Mutate_exp (v1, v2, v3) -> R.Case ("Mutate_exp",
      let v1 = map_expression_inner env v1 in
      let v2 = (* "<-" *) token env v2 in
      let v3 = map_expression_inner env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Obj_inst_exp (v1, v2, v3, v4, v5) -> R.Case ("Obj_inst_exp",
      let v1 = (* "new" *) token env v1 in
      let v2 = map_type_ env v2 in
      let v3 = map_imm_tok_lpar env v3 in
      let v4 = map_expression_inner env v4 in
      let v5 = (* ")" *) token env v5 in
      R.Tuple [v1; v2; v3; v4; v5]
    )
  | `List_exp (v1, v2, v3) -> R.Case ("List_exp",
      let v1 = (* "[" *) token env v1 in
      let v2 =
        (match v2 with
        | Some x -> R.Option (Some (
            map_list_element env x
          ))
        | None -> R.Option None)
      in
      let v3 = (* "]" *) token env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Array_exp (v1, v2, v3) -> R.Case ("Array_exp",
      let v1 = (* "[|" *) token env v1 in
      let v2 =
        (match v2 with
        | Some x -> R.Option (Some (
            map_list_element env x
          ))
        | None -> R.Option None)
      in
      let v3 = (* "|]" *) token env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Ce_exp (v1, v2, v3, v4, v5, v6) -> R.Case ("Ce_exp",
      let v1 = map_expression_inner env v1 in
      let v2 = (* "{" *) token env v2 in
      let v3 = (* virtual_open_section *) token env v3 in
      let v4 = map_comp_or_range_expression env v4 in
      let v5 = (* virtual_end_section *) token env v5 in
      let v6 = (* "}" *) token env v6 in
      R.Tuple [v1; v2; v3; v4; v5; v6]
    )
  | `Pref_exp (v1, v2) -> R.Case ("Pref_exp",
      let v1 =
        (match v1 with
        | `Lazy tok -> R.Case ("Lazy",
            (* "lazy" *) token env tok
          )
        | `Assert tok -> R.Case ("Assert",
            (* "assert" *) token env tok
          )
        | `Upcast tok -> R.Case ("Upcast",
            (* "upcast" *) token env tok
          )
        | `Down tok -> R.Case ("Down",
            (* "downcast" *) token env tok
          )
        | `PERC tok -> R.Case ("PERC",
            (* "%" *) token env tok
          )
        | `PERCPERC tok -> R.Case ("PERCPERC",
            (* "%%" *) token env tok
          )
        | `Prefix_op x -> R.Case ("Prefix_op",
            map_prefix_op env x
          )
        )
      in
      let v2 = map_expression_inner env v2 in
      R.Tuple [v1; v2]
    )
  | `Brace_exp (v1, v2, v3) -> R.Case ("Brace_exp",
      let v1 = (* "{" *) token env v1 in
      let v2 =
        (match v2 with
        | `With_field_exp x -> R.Case ("With_field_exp",
            map_with_field_expression env x
          )
        | `Field_exp x -> R.Case ("Field_exp",
            map_field_expression env x
          )
        | `Obj_exp x -> R.Case ("Obj_exp",
            map_object_expression env x
          )
        )
      in
      let v3 = (* "}" *) token env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Null tok -> R.Case ("Null",
      (* "null" *) token env tok
    )
  | `Type_exp (v1, v2, v3) -> R.Case ("Type_exp",
      let v1 = map_expression_inner env v1 in
      let v2 =
        (match v2 with
        | `COLON tok -> R.Case ("COLON",
            (* ":" *) token env tok
          )
        | `COLONGT tok -> R.Case ("COLONGT",
            (* ":>" *) token env tok
          )
        | `COLONQMARK tok -> R.Case ("COLONQMARK",
            (* ":?" *) token env tok
          )
        | `COLONQMARKGT tok -> R.Case ("COLONQMARKGT",
            (* ":?>" *) token env tok
          )
        )
      in
      let v3 = map_type_ env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Decl_exp (v1, v2, v3, v4) -> R.Case ("Decl_exp",
      let v1 =
        (match v1 with
        | `Choice_use_id_EQ_virt_open_sect_expres_virt_end_sect (v1, v2, v3, v4, v5, v6) -> R.Case ("Choice_use_id_EQ_virt_open_sect_expres_virt_end_sect",
            let v1 =
              (match v1 with
              | `Use tok -> R.Case ("Use",
                  (* "use" *) token env tok
                )
              | `UseB tok -> R.Case ("UseB",
                  (* "use!" *) token env tok
                )
              )
            in
            let v2 = map_identifier env v2 in
            let v3 = (* "=" *) token env v3 in
            let v4 = (* virtual_open_section *) token env v4 in
            let v5 = map_expressions env v5 in
            let v6 = (* virtual_end_section *) token env v6 in
            R.Tuple [v1; v2; v3; v4; v5; v6]
          )
        | `Func_or_value_defn x -> R.Case ("Func_or_value_defn",
            map_function_or_value_defn env x
          )
        )
      in
      let v2 = (* virtual_open_section *) token env v2 in
      let v3 = map_expressions env v3 in
      let v4 = (* virtual_end_section *) token env v4 in
      R.Tuple [v1; v2; v3; v4]
    )
  | `Do_exp (v1, v2, v3, v4) -> R.Case ("Do_exp",
      let v1 =
        (match v1 with
        | `Do tok -> R.Case ("Do",
            (* "do" *) token env tok
          )
        | `DoBANG tok -> R.Case ("DoBANG",
            (* "do!" *) token env tok
          )
        )
      in
      let v2 = (* virtual_open_section *) token env v2 in
      let v3 = map_expressions env v3 in
      let v4 = (* virtual_end_section *) token env v4 in
      R.Tuple [v1; v2; v3; v4]
    )
  | `Fun_exp (v1, v2, v3, v4, v5, v6) -> R.Case ("Fun_exp",
      let v1 = (* "fun" *) token env v1 in
      let v2 = map_argument_patterns env v2 in
      let v3 = (* "->" *) token env v3 in
      let v4 = (* virtual_open_section *) token env v4 in
      let v5 = map_expressions env v5 in
      let v6 = (* virtual_end_section *) token env v6 in
      R.Tuple [v1; v2; v3; v4; v5; v6]
    )
  | `Func_exp (v1, v2) -> R.Case ("Func_exp",
      let v1 = (* "function" *) token env v1 in
      let v2 = map_rules env v2 in
      R.Tuple [v1; v2]
    )
  | `If_exp (v1, v2, v3, v4, v5, v6) -> R.Case ("If_exp",
      let v1 = (* "if" *) token env v1 in
      let v2 = map_expression_inner env v2 in
      let v3 = (* "then" *) token env v3 in
      let v4 = map_expressions env v4 in
      let v5 = R.List (List.map (map_elif_expression env) v5) in
      let v6 =
        (match v6 with
        | Some x -> R.Option (Some (
            map_else_expression env x
          ))
        | None -> R.Option None)
      in
      R.Tuple [v1; v2; v3; v4; v5; v6]
    )
  | `While_exp (v1, v2, v3, v4, v5, v6, v7) -> R.Case ("While_exp",
      let v1 = (* "while" *) token env v1 in
      let v2 = map_expression_inner env v2 in
      let v3 = (* "do" *) token env v3 in
      let v4 = (* virtual_open_section *) token env v4 in
      let v5 = map_expressions env v5 in
      let v6 = (* virtual_end_section *) token env v6 in
      let v7 =
        (match v7 with
        | Some tok -> R.Option (Some (
            (* "done" *) token env tok
          ))
        | None -> R.Option None)
      in
      R.Tuple [v1; v2; v3; v4; v5; v6; v7]
    )
  | `For_exp (v1, v2, v3, v4, v5, v6, v7) -> R.Case ("For_exp",
      let v1 = (* "for" *) token env v1 in
      let v2 =
        (match v2 with
        | `Pat_in_choice_exp_inner (v1, v2, v3) -> R.Case ("Pat_in_choice_exp_inner",
            let v1 = map_pattern env v1 in
            let v2 = (* "in" *) token env v2 in
            let v3 = map_expression_or_range env v3 in
            R.Tuple [v1; v2; v3]
          )
        | `Id_EQ_exp_inner_choice_to_exp_inner (v1, v2, v3, v4, v5) -> R.Case ("Id_EQ_exp_inner_choice_to_exp_inner",
            let v1 = map_identifier env v1 in
            let v2 = (* "=" *) token env v2 in
            let v3 = map_expression_inner env v3 in
            let v4 =
              (match v4 with
              | `To tok -> R.Case ("To",
                  (* "to" *) token env tok
                )
              | `Downto tok -> R.Case ("Downto",
                  (* "downto" *) token env tok
                )
              )
            in
            let v5 = map_expression_inner env v5 in
            R.Tuple [v1; v2; v3; v4; v5]
          )
        )
      in
      let v3 = (* "do" *) token env v3 in
      let v4 = (* virtual_open_section *) token env v4 in
      let v5 = map_expressions env v5 in
      let v6 = (* virtual_end_section *) token env v6 in
      let v7 =
        (match v7 with
        | Some tok -> R.Option (Some (
            (* "done" *) token env tok
          ))
        | None -> R.Option None)
      in
      R.Tuple [v1; v2; v3; v4; v5; v6; v7]
    )
  | `Match_exp (v1, v2, v3, v4) -> R.Case ("Match_exp",
      let v1 =
        (match v1 with
        | `Match tok -> R.Case ("Match",
            (* "match" *) token env tok
          )
        | `Matc tok -> R.Case ("Matc",
            (* "match!" *) token env tok
          )
        )
      in
      let v2 = map_expression_inner env v2 in
      let v3 = (* "with" *) token env v3 in
      let v4 = map_rules env v4 in
      R.Tuple [v1; v2; v3; v4]
    )
  | `Try_exp (v1, v2, v3, v4, v5) -> R.Case ("Try_exp",
      let v1 = (* "try" *) token env v1 in
      let v2 = (* virtual_open_section *) token env v2 in
      let v3 = map_expressions env v3 in
      let v4 = (* virtual_end_section *) token env v4 in
      let v5 =
        (match v5 with
        | `With_rules (v1, v2) -> R.Case ("With_rules",
            let v1 = (* "with" *) token env v1 in
            let v2 = map_rules env v2 in
            R.Tuple [v1; v2]
          )
        | `Fina_virt_open_sect_expres_virt_end_sect (v1, v2, v3, v4) -> R.Case ("Fina_virt_open_sect_expres_virt_end_sect",
            let v1 = (* "finally" *) token env v1 in
            let v2 = (* virtual_open_section *) token env v2 in
            let v3 = map_expressions env v3 in
            let v4 = (* virtual_end_section *) token env v4 in
            R.Tuple [v1; v2; v3; v4]
          )
        )
      in
      R.Tuple [v1; v2; v3; v4; v5]
    )
  | `Lit_exp x -> R.Case ("Lit_exp",
      map_literal_expression env x
    )
  | `Call_exp (v1, v2, v3, v4) -> R.Case ("Call_exp",
      let v1 = map_expression_inner env v1 in
      let v2 = map_imm_tok_lpar env v2 in
      let v3 =
        (match v3 with
        | Some x -> R.Option (Some (
            map_expressions env x
          ))
        | None -> R.Option None)
      in
      let v4 = (* ")" *) token env v4 in
      R.Tuple [v1; v2; v3; v4]
    )
  | `Tuple_exp (v1, v2) -> R.Case ("Tuple_exp",
      let v1 = map_expression_inner env v1 in
      let v2 =
        R.List (List.map (fun (v1, v2) ->
          let v1 = (* "," *) token env v1 in
          let v2 = map_expression_inner env v2 in
          R.Tuple [v1; v2]
        ) v2)
      in
      R.Tuple [v1; v2]
    )
  | `App_exp (v1, v2) -> R.Case ("App_exp",
      let v1 = map_expression_inner env v1 in
      let v2 = R.List (List.map (map_expression_inner env) v2) in
      R.Tuple [v1; v2]
    )
  | `Ret_exp (v1, v2) -> R.Case ("Ret_exp",
      let v1 =
        (match v1 with
        | `Ret tok -> R.Case ("Ret",
            (* "return" *) token env tok
          )
        | `Retu tok -> R.Case ("Retu",
            (* "return!" *) token env tok
          )
        )
      in
      let v2 = map_expression_inner env v2 in
      R.Tuple [v1; v2]
    )
  | `Yield_exp (v1, v2) -> R.Case ("Yield_exp",
      let v1 =
        (match v1 with
        | `Yield tok -> R.Case ("Yield",
            (* "yield" *) token env tok
          )
        | `Yiel tok -> R.Case ("Yiel",
            (* "yield!" *) token env tok
          )
        )
      in
      let v2 = map_expression_inner env v2 in
      R.Tuple [v1; v2]
    )
  )

and map_expression_or_range (env : env) (x : CST.expression_or_range) =
  (match x with
  | `Exp_inner x -> R.Case ("Exp_inner",
      map_expression_inner env x
    )
  | `Range_exp (v1, v2, v3, v4) -> R.Case ("Range_exp",
      let v1 = map_expressions env v1 in
      let v2 = (* ".." *) token env v2 in
      let v3 = map_expressions env v3 in
      let v4 =
        (match v4 with
        | Some (v1, v2) -> R.Option (Some (
            let v1 = (* ".." *) token env v1 in
            let v2 = map_expressions env v2 in
            R.Tuple [v1; v2]
          ))
        | None -> R.Option None)
      in
      R.Tuple [v1; v2; v3; v4]
    )
  )

and map_expressions (env : env) (x : CST.expressions) =
  (match x with
  | `Seq_infix (v1, v2) -> R.Case ("Seq_infix",
      let v1 = map_expression_inner env v1 in
      let v2 =
        R.List (List.map (fun (v1, v2, v3) ->
          let v1 = (* virtual_end_decl *) token env v1 in
          let v2 = map_infix_op env v2 in
          let v3 = map_expressions env v3 in
          R.Tuple [v1; v2; v3]
        ) v2)
      in
      R.Tuple [v1; v2]
    )
  | `Exp_inner_rep_virt_end_decl_expres (v1, v2) -> R.Case ("Exp_inner_rep_virt_end_decl_expres",
      let v1 = map_expression_inner env v1 in
      let v2 =
        R.List (List.map (fun (v1, v2) ->
          let v1 = (* virtual_end_decl *) token env v1 in
          let v2 = map_expressions env v2 in
          R.Tuple [v1; v2]
        ) v2)
      in
      R.Tuple [v1; v2]
    )
  )

and map_field_expression (env : env) (x : CST.field_expression) =
  map_field_initializers env x

and map_field_initializer (env : env) ((v1, v2, v3, v4, v5) : CST.field_initializer) =
  let v1 = map_long_identifier env v1 in
  let v2 = (* "=" *) token env v2 in
  let v3 = (* virtual_open_section *) token env v3 in
  let v4 = map_expressions env v4 in
  let v5 = (* virtual_end_section *) token env v5 in
  R.Tuple [v1; v2; v3; v4; v5]

and map_field_initializers (env : env) ((v1, v2) : CST.field_initializers) =
  let v1 = map_field_initializer env v1 in
  let v2 =
    R.List (List.map (fun (v1, v2) ->
      let v1 = (* virtual_end_decl *) token env v1 in
      let v2 = map_field_initializer env v2 in
      R.Tuple [v1; v2]
    ) v2)
  in
  R.Tuple [v1; v2]

and map_field_pattern (env : env) ((v1, v2, v3) : CST.field_pattern) =
  let v1 = map_long_identifier env v1 in
  let v2 = (* "=" *) token env v2 in
  let v3 = map_pattern env v3 in
  R.Tuple [v1; v2; v3]

and map_function_declaration_left (env : env) ((v1, v2, v3, v4, v5, v6) : CST.function_declaration_left) =
  let v1 =
    (match v1 with
    | Some tok -> R.Option (Some (
        (* "inline" *) token env tok
      ))
    | None -> R.Option None)
  in
  let v2 =
    (match v2 with
    | Some x -> R.Option (Some (
        map_access_modifier env x
      ))
    | None -> R.Option None)
  in
  let v3 = map_identifier_or_op env v3 in
  let v4 =
    (match v4 with
    | Some x -> R.Option (Some (
        map_type_arguments env x
      ))
    | None -> R.Option None)
  in
  let v5 = map_argument_patterns env v5 in
  let v6 =
    (match v6 with
    | Some (v1, v2) -> R.Option (Some (
        let v1 = (* ":" *) token env v1 in
        let v2 = map_type_ env v2 in
        R.Tuple [v1; v2]
      ))
    | None -> R.Option None)
  in
  R.Tuple [v1; v2; v3; v4; v5; v6]

and map_function_or_value_defn (env : env) ((v1, v2) : CST.function_or_value_defn) =
  let v1 =
    (match v1 with
    | `Let tok -> R.Case ("Let",
        (* "let" *) token env tok
      )
    | `LetB tok -> R.Case ("LetB",
        (* "let!" *) token env tok
      )
    )
  in
  let v2 =
    (match v2 with
    | `Func_or_value_defn_body x -> R.Case ("Func_or_value_defn_body",
        map_function_or_value_defn_body env x
      )
    | `Rec_func_or_value_defns (v1, v2) -> R.Case ("Rec_func_or_value_defns",
        let v1 = (* "rec" *) token env v1 in
        let v2 = map_function_or_value_defns env v2 in
        R.Tuple [v1; v2]
      )
    )
  in
  R.Tuple [v1; v2]

and map_function_or_value_defn_body (env : env) ((v1, v2, v3, v4, v5) : CST.function_or_value_defn_body) =
  let v1 =
    (match v1 with
    | `Func_decl_left x -> R.Case ("Func_decl_left",
        map_function_declaration_left env x
      )
    | `Value_decl_left x -> R.Case ("Value_decl_left",
        map_value_declaration_left env x
      )
    )
  in
  let v2 = (* "=" *) token env v2 in
  let v3 = (* virtual_open_section *) token env v3 in
  let v4 = map_expressions env v4 in
  let v5 = (* virtual_end_section *) token env v5 in
  R.Tuple [v1; v2; v3; v4; v5]

and map_function_or_value_defns (env : env) ((v1, v2) : CST.function_or_value_defns) =
  let v1 = map_function_or_value_defn_body env v1 in
  let v2 =
    R.List (List.map (fun (v1, v2) ->
      let v1 = (* "and" *) token env v1 in
      let v2 = map_function_or_value_defn_body env v2 in
      R.Tuple [v1; v2]
    ) v2)
  in
  R.Tuple [v1; v2]

and map_interface_implementation (env : env) ((v1, v2, v3) : CST.interface_implementation) =
  let v1 = (* "interface" *) token env v1 in
  let v2 = map_type_ env v2 in
  let v3 =
    (match v3 with
    | Some x -> R.Option (Some (
        map_object_members env x
      ))
    | None -> R.Option None)
  in
  R.Tuple [v1; v2; v3]

and map_interface_implementations (env : env) (xs : CST.interface_implementations) =
  R.List (List.map (map_interface_implementation env) xs)

and map_list_element (env : env) (x : CST.list_element) =
  (match x with
  | `List_elemes (v1, v2, v3, v4) -> R.Case ("List_elemes",
      let v1 = (* virtual_open_section *) token env v1 in
      let v2 = map_expression_inner env v2 in
      let v3 =
        R.List (List.map (fun (v1, v2) ->
          let v1 = (* virtual_end_decl *) token env v1 in
          let v2 = map_expression_inner env v2 in
          R.Tuple [v1; v2]
        ) v3)
      in
      let v4 = (* virtual_end_section *) token env v4 in
      R.Tuple [v1; v2; v3; v4]
    )
  | `Comp_or_range_exp x -> R.Case ("Comp_or_range_exp",
      map_comp_or_range_expression env x
    )
  )

and map_list_pattern (env : env) (x : CST.list_pattern) =
  (match x with
  | `LBRACK_RBRACK (v1, v2) -> R.Case ("LBRACK_RBRACK",
      let v1 = (* "[" *) token env v1 in
      let v2 = (* "]" *) token env v2 in
      R.Tuple [v1; v2]
    )
  | `LBRACK_pat_rep_SEMI_pat_RBRACK (v1, v2, v3, v4) -> R.Case ("LBRACK_pat_rep_SEMI_pat_RBRACK",
      let v1 = (* "[" *) token env v1 in
      let v2 = map_pattern env v2 in
      let v3 =
        R.List (List.map (fun (v1, v2) ->
          let v1 = (* ";" *) token env v1 in
          let v2 = map_pattern env v2 in
          R.Tuple [v1; v2]
        ) v3)
      in
      let v4 = (* "]" *) token env v4 in
      R.Tuple [v1; v2; v3; v4]
    )
  )

and map_literal_expression (env : env) (x : CST.literal_expression) =
  (match x with
  | `LTAT_exp_inner_ATGT (v1, v2, v3) -> R.Case ("LTAT_exp_inner_ATGT",
      let v1 = (* "<@" *) token env v1 in
      let v2 = map_expression_inner env v2 in
      let v3 = (* "@>" *) token env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `LTATAT_exp_inner_ATATGT (v1, v2, v3) -> R.Case ("LTATAT_exp_inner_ATATGT",
      let v1 = (* "<@@" *) token env v1 in
      let v2 = map_expression_inner env v2 in
      let v3 = (* "@@>" *) token env v3 in
      R.Tuple [v1; v2; v3]
    )
  )

and map_member_defn (env : env) ((v1, v2) : CST.member_defn) =
  let v1 =
    (match v1 with
    | Some x -> R.Option (Some (
        map_attributes env x
      ))
    | None -> R.Option None)
  in
  let v2 =
    (match v2 with
    | `Opt_static_member_opt_choice_priv_meth_or_prop_defn (v1, v2, v3, v4) -> R.Case ("Opt_static_member_opt_choice_priv_meth_or_prop_defn",
        let v1 =
          (match v1 with
          | Some tok -> R.Option (Some (
              (* "static" *) token env tok
            ))
          | None -> R.Option None)
        in
        let v2 = (* "member" *) token env v2 in
        let v3 =
          (match v3 with
          | Some x -> R.Option (Some (
              map_access_modifier env x
            ))
          | None -> R.Option None)
        in
        let v4 = map_method_or_prop_defn env v4 in
        R.Tuple [v1; v2; v3; v4]
      )
    | `Abst_opt_member_opt_choice_priv_member_sign (v1, v2, v3, v4) -> R.Case ("Abst_opt_member_opt_choice_priv_member_sign",
        let v1 = (* "abstract" *) token env v1 in
        let v2 =
          (match v2 with
          | Some tok -> R.Option (Some (
              (* "member" *) token env tok
            ))
          | None -> R.Option None)
        in
        let v3 =
          (match v3 with
          | Some x -> R.Option (Some (
              map_access_modifier env x
            ))
          | None -> R.Option None)
        in
        let v4 = map_member_signature env v4 in
        R.Tuple [v1; v2; v3; v4]
      )
    | `Over_opt_choice_priv_meth_or_prop_defn (v1, v2, v3) -> R.Case ("Over_opt_choice_priv_meth_or_prop_defn",
        let v1 = (* "override" *) token env v1 in
        let v2 =
          (match v2 with
          | Some x -> R.Option (Some (
              map_access_modifier env x
            ))
          | None -> R.Option None)
        in
        let v3 = map_method_or_prop_defn env v3 in
        R.Tuple [v1; v2; v3]
      )
    | `Defa_opt_choice_priv_meth_or_prop_defn (v1, v2, v3) -> R.Case ("Defa_opt_choice_priv_meth_or_prop_defn",
        let v1 = (* "default" *) token env v1 in
        let v2 =
          (match v2 with
          | Some x -> R.Option (Some (
              map_access_modifier env x
            ))
          | None -> R.Option None)
        in
        let v3 = map_method_or_prop_defn env v3 in
        R.Tuple [v1; v2; v3]
      )
    | `Opt_static_val_opt_muta_opt_choice_priv_id_COLON_type (v1, v2, v3, v4, v5, v6, v7) -> R.Case ("Opt_static_val_opt_muta_opt_choice_priv_id_COLON_type",
        let v1 =
          (match v1 with
          | Some tok -> R.Option (Some (
              (* "static" *) token env tok
            ))
          | None -> R.Option None)
        in
        let v2 = (* "val" *) token env v2 in
        let v3 =
          (match v3 with
          | Some tok -> R.Option (Some (
              (* "mutable" *) token env tok
            ))
          | None -> R.Option None)
        in
        let v4 =
          (match v4 with
          | Some x -> R.Option (Some (
              map_access_modifier env x
            ))
          | None -> R.Option None)
        in
        let v5 = map_identifier env v5 in
        let v6 = (* ":" *) token env v6 in
        let v7 = map_type_ env v7 in
        R.Tuple [v1; v2; v3; v4; v5; v6; v7]
      )
    | `Addi_constr_defn x -> R.Case ("Addi_constr_defn",
        map_additional_constr_defn env x
      )
    )
  in
  R.Tuple [v1; v2]

and map_member_defns (env : env) ((v1, v2) : CST.member_defns) =
  let v1 = map_member_defn env v1 in
  let v2 =
    R.List (List.map (fun (v1, v2) ->
      let v1 = (* virtual_end_decl *) token env v1 in
      let v2 = map_member_defn env v2 in
      R.Tuple [v1; v2]
    ) v2)
  in
  R.Tuple [v1; v2]

and map_member_signature (env : env) ((v1, v2, v3, v4, v5) : CST.member_signature) =
  let v1 = map_identifier env v1 in
  let v2 =
    (match v2 with
    | Some x -> R.Option (Some (
        map_type_arguments env x
      ))
    | None -> R.Option None)
  in
  let v3 = (* ":" *) token env v3 in
  let v4 = map_type_ env v4 in
  let v5 =
    (match v5 with
    | Some x -> R.Option (Some (
        (match x with
        | `With_get (v1, v2) -> R.Case ("With_get",
            let v1 = (* "with" *) token env v1 in
            let v2 = (* "get" *) token env v2 in
            R.Tuple [v1; v2]
          )
        | `With_set (v1, v2) -> R.Case ("With_set",
            let v1 = (* "with" *) token env v1 in
            let v2 = (* "set" *) token env v2 in
            R.Tuple [v1; v2]
          )
        | `With_get_COMMA_set (v1, v2, v3, v4) -> R.Case ("With_get_COMMA_set",
            let v1 = (* "with" *) token env v1 in
            let v2 = (* "get" *) token env v2 in
            let v3 = (* "," *) token env v3 in
            let v4 = (* "set" *) token env v4 in
            R.Tuple [v1; v2; v3; v4]
          )
        | `With_set_COMMA_get (v1, v2, v3, v4) -> R.Case ("With_set_COMMA_get",
            let v1 = (* "with" *) token env v1 in
            let v2 = (* "set" *) token env v2 in
            let v3 = (* "," *) token env v3 in
            let v4 = (* "get" *) token env v4 in
            R.Tuple [v1; v2; v3; v4]
          )
        )
      ))
    | None -> R.Option None)
  in
  R.Tuple [v1; v2; v3; v4; v5]

and map_method_defn (env : env) (x : CST.method_defn) =
  (match x with
  | `Prop_or_id_pat_EQ_virt_open_sect_expres_virt_end_sect (v1, v2, v3, v4, v5, v6) -> R.Case ("Prop_or_id_pat_EQ_virt_open_sect_expres_virt_end_sect",
      let v1 = map_property_or_ident env v1 in
      let v2 = map_pattern env v2 in
      let v3 = (* "=" *) token env v3 in
      let v4 = (* virtual_open_section *) token env v4 in
      let v5 = map_expressions env v5 in
      let v6 = (* virtual_end_section *) token env v6 in
      R.Tuple [v1; v2; v3; v4; v5; v6]
    )
  )

and map_method_or_prop_defn (env : env) (x : CST.method_or_prop_defn) =
  (match x with
  | `Prop_or_id_with_virt_open_sect_func_or_value_defns_virt_end_sect (v1, v2, v3, v4, v5) -> R.Case ("Prop_or_id_with_virt_open_sect_func_or_value_defns_virt_end_sect",
      let v1 = map_property_or_ident env v1 in
      let v2 = (* "with" *) token env v2 in
      let v3 = (* virtual_open_section *) token env v3 in
      let v4 = map_function_or_value_defns env v4 in
      let v5 = (* virtual_end_section *) token env v5 in
      R.Tuple [v1; v2; v3; v4; v5]
    )
  | `Meth_defn x -> R.Case ("Meth_defn",
      map_method_defn env x
    )
  | `Prop_defn (v1, v2, v3, v4, v5, v6) -> R.Case ("Prop_defn",
      let v1 = map_property_or_ident env v1 in
      let v2 = (* "=" *) token env v2 in
      let v3 = (* virtual_open_section *) token env v3 in
      let v4 = map_expressions env v4 in
      let v5 = (* virtual_end_section *) token env v5 in
      let v6 =
        (match v6 with
        | Some (v1, v2) -> R.Option (Some (
            let v1 = (* "with" *) token env v1 in
            let v2 =
              (match v2 with
              | `Get tok -> R.Case ("Get",
                  (* "get" *) token env tok
                )
              | `Set tok -> R.Case ("Set",
                  (* "set" *) token env tok
                )
              | `Get_COMMA_set (v1, v2, v3) -> R.Case ("Get_COMMA_set",
                  let v1 = (* "get" *) token env v1 in
                  let v2 = (* "," *) token env v2 in
                  let v3 = (* "set" *) token env v3 in
                  R.Tuple [v1; v2; v3]
                )
              | `Set_COMMA_get (v1, v2, v3) -> R.Case ("Set_COMMA_get",
                  let v1 = (* "set" *) token env v1 in
                  let v2 = (* "," *) token env v2 in
                  let v3 = (* "get" *) token env v3 in
                  R.Tuple [v1; v2; v3]
                )
              )
            in
            R.Tuple [v1; v2]
          ))
        | None -> R.Option None)
      in
      R.Tuple [v1; v2; v3; v4; v5; v6]
    )
  )

and map_object_construction (env : env) ((v1, v2) : CST.object_construction) =
  let v1 = map_type_ env v1 in
  let v2 =
    (match v2 with
    | Some x -> R.Option (Some (
        map_expressions env x
      ))
    | None -> R.Option None)
  in
  R.Tuple [v1; v2]

and map_object_expression (env : env) ((v1, v2, v3, v4, v5, v6) : CST.object_expression) =
  let v1 = (* "new" *) token env v1 in
  let v2 = map_base_call env v2 in
  let v3 = (* virtual_open_section *) token env v3 in
  let v4 = map_object_members env v4 in
  let v5 = map_interface_implementations env v5 in
  let v6 = (* virtual_end_section *) token env v6 in
  R.Tuple [v1; v2; v3; v4; v5; v6]

and map_object_members (env : env) ((v1, v2, v3, v4) : CST.object_members) =
  let v1 = (* "with" *) token env v1 in
  let v2 = (* virtual_open_section *) token env v2 in
  let v3 = map_member_defns env v3 in
  let v4 = (* virtual_end_section *) token env v4 in
  R.Tuple [v1; v2; v3; v4]

and map_paren_pattern (env : env) ((v1, v2, v3, v4, v5) : CST.paren_pattern) =
  let v1 = (* "(" *) token env v1 in
  let v2 = (* virtual_open_section *) token env v2 in
  let v3 = map_pattern env v3 in
  let v4 = (* virtual_end_section *) token env v4 in
  let v5 = (* ")" *) token env v5 in
  R.Tuple [v1; v2; v3; v4; v5]

and map_pattern (env : env) (x : CST.pattern) =
  (match x with
  | `Null tok -> R.Case ("Null",
      (* "null" *) token env tok
    )
  | `X__ tok -> R.Case ("X__",
      (* "_" *) token env tok
    )
  | `Const x -> R.Case ("Const",
      map_const env x
    )
  | `Id_pat (v1, v2, v3) -> R.Case ("Id_pat",
      let v1 = map_long_identifier env v1 in
      let v2 =
        (match v2 with
        | Some x -> R.Option (Some (
            map_pattern_param env x
          ))
        | None -> R.Option None)
      in
      let v3 =
        (match v3 with
        | Some x -> R.Option (Some (
            map_pattern env x
          ))
        | None -> R.Option None)
      in
      R.Tuple [v1; v2; v3]
    )
  | `As_pat (v1, v2, v3) -> R.Case ("As_pat",
      let v1 = map_pattern env v1 in
      let v2 = (* "as" *) token env v2 in
      let v3 = map_identifier env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Disj_pat (v1, v2, v3) -> R.Case ("Disj_pat",
      let v1 = map_pattern env v1 in
      let v2 = (* "|" *) token env v2 in
      let v3 = map_pattern env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Conj_pat (v1, v2, v3) -> R.Case ("Conj_pat",
      let v1 = map_pattern env v1 in
      let v2 = (* "&" *) token env v2 in
      let v3 = map_pattern env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Cons_pat (v1, v2, v3) -> R.Case ("Cons_pat",
      let v1 = map_pattern env v1 in
      let v2 = (* "::" *) token env v2 in
      let v3 = map_pattern env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Repeat_pat (v1, v2, v3, v4) -> R.Case ("Repeat_pat",
      let v1 = map_pattern env v1 in
      let v2 = (* "," *) token env v2 in
      let v3 =
        R.List (List.map (fun (v1, v2, v3) ->
          let v1 = (* virtual_end_decl *) token env v1 in
          let v2 = map_pattern env v2 in
          let v3 = (* "," *) token env v3 in
          R.Tuple [v1; v2; v3]
        ) v3)
      in
      let v4 = map_pattern env v4 in
      R.Tuple [v1; v2; v3; v4]
    )
  | `Paren_pat x -> R.Case ("Paren_pat",
      map_paren_pattern env x
    )
  | `List_pat x -> R.Case ("List_pat",
      map_list_pattern env x
    )
  | `Array_pat x -> R.Case ("Array_pat",
      map_array_pattern env x
    )
  | `Record_pat x -> R.Case ("Record_pat",
      map_record_pattern env x
    )
  | `Typed_pat (v1, v2, v3) -> R.Case ("Typed_pat",
      let v1 = map_pattern env v1 in
      let v2 = (* ":" *) token env v2 in
      let v3 = map_type_ env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Attr_pat (v1, v2) -> R.Case ("Attr_pat",
      let v1 = map_attributes env v1 in
      let v2 = map_pattern env v2 in
      R.Tuple [v1; v2]
    )
  )

and map_record_pattern (env : env) ((v1, v2, v3) : CST.record_pattern) =
  let v1 = (* "{" *) token env v1 in
  let v2 = map_field_pattern env v2 in
  let v3 =
    R.List (List.map (fun (v1, v2) ->
      let v1 = (* ";" *) token env v1 in
      let v2 = map_field_pattern env v2 in
      R.Tuple [v1; v2]
    ) v3)
  in
  R.Tuple [v1; v2; v3]

and map_rule (env : env) ((v1, v2, v3, v4, v5) : CST.rule) =
  let v1 = map_pattern env v1 in
  let v2 = (* "->" *) token env v2 in
  let v3 = (* virtual_open_section *) token env v3 in
  let v4 = map_expressions env v4 in
  let v5 = (* virtual_end_section *) token env v5 in
  R.Tuple [v1; v2; v3; v4; v5]

and map_rules (env : env) ((v1, v2, v3, v4, v5) : CST.rules) =
  let v1 = (* virtual_open_section *) token env v1 in
  let v2 =
    (match v2 with
    | Some tok -> R.Option (Some (
        (* "|" *) token env tok
      ))
    | None -> R.Option None)
  in
  let v3 = map_rule env v3 in
  let v4 =
    R.List (List.map (fun (v1, v2) ->
      let v1 = (* "|" *) token env v1 in
      let v2 = map_rule env v2 in
      R.Tuple [v1; v2]
    ) v4)
  in
  let v5 = (* virtual_end_section *) token env v5 in
  R.Tuple [v1; v2; v3; v4; v5]

and map_slice_range (env : env) (x : CST.slice_range) =
  (match x with
  | `Slice_range_spec x -> R.Case ("Slice_range_spec",
      map_slice_range_special env x
    )
  | `Expres x -> R.Case ("Expres",
      map_expressions env x
    )
  | `STAR tok -> R.Case ("STAR",
      (* "*" *) token env tok
    )
  )

and map_slice_range_special (env : env) (x : CST.slice_range_special) =
  (match x with
  | `Expres_DOTDOT (v1, v2) -> R.Case ("Expres_DOTDOT",
      let v1 = map_expressions env v1 in
      let v2 = (* ".." *) token env v2 in
      R.Tuple [v1; v2]
    )
  | `DOTDOT_expres (v1, v2) -> R.Case ("DOTDOT_expres",
      let v1 = (* ".." *) token env v1 in
      let v2 = map_expressions env v2 in
      R.Tuple [v1; v2]
    )
  | `Expres_DOTDOT_expres (v1, v2, v3) -> R.Case ("Expres_DOTDOT_expres",
      let v1 = map_expressions env v1 in
      let v2 = (* ".." *) token env v2 in
      let v3 = map_expressions env v3 in
      R.Tuple [v1; v2; v3]
    )
  )

and map_slice_ranges (env : env) ((v1, v2) : CST.slice_ranges) =
  let v1 = map_slice_range env v1 in
  let v2 =
    R.List (List.map (fun (v1, v2) ->
      let v1 = (* "," *) token env v1 in
      let v2 = map_slice_range env v2 in
      R.Tuple [v1; v2]
    ) v2)
  in
  R.Tuple [v1; v2]

and map_trait_member_constraint (env : env) ((v1, v2, v3, v4, v5) : CST.trait_member_constraint) =
  let v1 =
    (match v1 with
    | Some tok -> R.Option (Some (
        (* "static" *) token env tok
      ))
    | None -> R.Option None)
  in
  let v2 = (* "member" *) token env v2 in
  let v3 = map_identifier env v3 in
  let v4 = (* ":" *) token env v4 in
  let v5 = map_type_ env v5 in
  R.Tuple [v1; v2; v3; v4; v5]

and map_type_ (env : env) (x : CST.type_) =
  (match x with
  | `Long_id x -> R.Case ("Long_id",
      map_long_identifier env x
    )
  | `Long_id_LT_opt_type_attris_GT (v1, v2, v3, v4) -> R.Case ("Long_id_LT_opt_type_attris_GT",
      let v1 = map_long_identifier env v1 in
      let v2 = (* "<" *) token env v2 in
      let v3 =
        (match v3 with
        | Some x -> R.Option (Some (
            map_type_attributes env x
          ))
        | None -> R.Option None)
      in
      let v4 = (* ">" *) token env v4 in
      R.Tuple [v1; v2; v3; v4]
    )
  | `LPAR_type_RPAR (v1, v2, v3) -> R.Case ("LPAR_type_RPAR",
      let v1 = (* "(" *) token env v1 in
      let v2 = map_type_ env v2 in
      let v3 = (* ")" *) token env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Type_DASHGT_type (v1, v2, v3) -> R.Case ("Type_DASHGT_type",
      let v1 = map_type_ env v1 in
      let v2 = (* "->" *) token env v2 in
      let v3 = map_type_ env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Type_rep1_STAR_type (v1, v2) -> R.Case ("Type_rep1_STAR_type",
      let v1 = map_type_ env v1 in
      let v2 =
        R.List (List.map (fun (v1, v2) ->
          let v1 = (* "*" *) token env v1 in
          let v2 = map_type_ env v2 in
          R.Tuple [v1; v2]
        ) v2)
      in
      R.Tuple [v1; v2]
    )
  | `Type_long_id (v1, v2) -> R.Case ("Type_long_id",
      let v1 = map_type_ env v1 in
      let v2 = map_long_identifier env v2 in
      R.Tuple [v1; v2]
    )
  | `Type_LBRACK_rep_COMMA_RBRACK (v1, v2, v3, v4) -> R.Case ("Type_LBRACK_rep_COMMA_RBRACK",
      let v1 = map_type_ env v1 in
      let v2 = (* "[" *) token env v2 in
      let v3 = R.List (List.map (token env (* "," *)) v3) in
      let v4 = (* "]" *) token env v4 in
      R.Tuple [v1; v2; v3; v4]
    )
  | `Type_type_arg_defn (v1, v2) -> R.Case ("Type_type_arg_defn",
      let v1 = map_type_ env v1 in
      let v2 = map_type_argument_defn env v2 in
      R.Tuple [v1; v2]
    )
  | `Type_arg x -> R.Case ("Type_arg",
      map_type_argument env x
    )
  | `Type_arg_COLONGT_type (v1, v2, v3) -> R.Case ("Type_arg_COLONGT_type",
      let v1 = map_type_argument env v1 in
      let v2 = (* ":>" *) token env v2 in
      let v3 = map_type_ env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Imm_tok_hash_type (v1, v2) -> R.Case ("Imm_tok_hash_type",
      let v1 = map_imm_tok_hash env v1 in
      let v2 = map_type_ env v2 in
      R.Tuple [v1; v2]
    )
  )

and map_type_argument_constraints (env : env) ((v1, v2, v3) : CST.type_argument_constraints) =
  let v1 = (* "when" *) token env v1 in
  let v2 = map_constraint_ env v2 in
  let v3 =
    R.List (List.map (fun (v1, v2) ->
      let v1 = (* "and" *) token env v1 in
      let v2 = map_constraint_ env v2 in
      R.Tuple [v1; v2]
    ) v3)
  in
  R.Tuple [v1; v2; v3]

and map_type_argument_defn (env : env) ((v1, v2) : CST.type_argument_defn) =
  let v1 =
    (match v1 with
    | Some x -> R.Option (Some (
        map_attributes env x
      ))
    | None -> R.Option None)
  in
  let v2 = map_type_argument env v2 in
  R.Tuple [v1; v2]

and map_type_arguments (env : env) ((v1, v2, v3, v4, v5) : CST.type_arguments) =
  let v1 = (* "<" *) token env v1 in
  let v2 = map_type_argument_defn env v2 in
  let v3 =
    R.List (List.map (fun (v1, v2) ->
      let v1 = (* "," *) token env v1 in
      let v2 = map_type_argument_defn env v2 in
      R.Tuple [v1; v2]
    ) v3)
  in
  let v4 =
    (match v4 with
    | Some x -> R.Option (Some (
        map_type_argument_constraints env x
      ))
    | None -> R.Option None)
  in
  let v5 = (* ">" *) token env v5 in
  R.Tuple [v1; v2; v3; v4; v5]

and map_type_attribute (env : env) (x : CST.type_attribute) =
  (match x with
  | `Type x -> R.Case ("Type",
      map_type_ env x
    )
  )

and map_type_attributes (env : env) ((v1, v2) : CST.type_attributes) =
  let v1 = map_type_attribute env v1 in
  let v2 =
    R.List (List.map (fun (v1, v2) ->
      let v1 = (* "," *) token env v1 in
      let v2 = map_type_attribute env v2 in
      R.Tuple [v1; v2]
    ) v2)
  in
  R.Tuple [v1; v2]

and map_types (env : env) ((v1, v2) : CST.types) =
  let v1 = map_type_ env v1 in
  let v2 =
    R.List (List.map (fun (v1, v2) ->
      let v1 = (* "," *) token env v1 in
      let v2 = map_type_ env v2 in
      R.Tuple [v1; v2]
    ) v2)
  in
  R.Tuple [v1; v2]

and map_value_declaration_left (env : env) ((v1, v2, v3, v4, v5) : CST.value_declaration_left) =
  let v1 =
    (match v1 with
    | Some tok -> R.Option (Some (
        (* "mutable" *) token env tok
      ))
    | None -> R.Option None)
  in
  let v2 =
    (match v2 with
    | Some x -> R.Option (Some (
        map_access_modifier env x
      ))
    | None -> R.Option None)
  in
  let v3 = map_pattern env v3 in
  let v4 =
    (match v4 with
    | Some x -> R.Option (Some (
        map_type_arguments env x
      ))
    | None -> R.Option None)
  in
  let v5 =
    (match v5 with
    | Some (v1, v2) -> R.Option (Some (
        let v1 = (* ":" *) token env v1 in
        let v2 = map_type_ env v2 in
        R.Tuple [v1; v2]
      ))
    | None -> R.Option None)
  in
  R.Tuple [v1; v2; v3; v4; v5]

and map_with_field_expression (env : env) ((v1, v2, v3, v4, v5) : CST.with_field_expression) =
  let v1 = map_expressions env v1 in
  let v2 = (* "with" *) token env v2 in
  let v3 = (* virtual_open_section *) token env v3 in
  let v4 = map_field_expression env v4 in
  let v5 = (* virtual_end_section *) token env v5 in
  R.Tuple [v1; v2; v3; v4; v5]

let map_enum_type_cases (env : env) ((v1, v2, v3) : CST.enum_type_cases) =
  let v1 =
    (match v1 with
    | Some tok -> R.Option (Some (
        (* "|" *) token env tok
      ))
    | None -> R.Option None)
  in
  let v2 = map_enum_type_case env v2 in
  let v3 =
    R.List (List.map (fun (v1, v2, v3) ->
      let v1 = (* virtual_end_decl *) token env v1 in
      let v2 = (* "|" *) token env v2 in
      let v3 = map_enum_type_case env v3 in
      R.Tuple [v1; v2; v3]
    ) v3)
  in
  R.Tuple [v1; v2; v3]

let map_type_defn_elements (env : env) (x : CST.type_defn_elements) =
  (match x with
  | `Member_defns x -> R.Case ("Member_defns",
      map_member_defns env x
    )
  | `Inte_imples x -> R.Case ("Inte_imples",
      map_interface_implementations env x
    )
  )

let map_delegate_signature (env : env) ((v1, v2, v3) : CST.delegate_signature) =
  let v1 = (* "delegate" *) token env v1 in
  let v2 = (* "of" *) token env v2 in
  let v3 = map_type_ env v3 in
  R.Tuple [v1; v2; v3]

let map_type_name (env : env) ((v1, v2, v3) : CST.type_name) =
  let v1 =
    (match v1 with
    | Some x -> R.Option (Some (
        map_attributes env x
      ))
    | None -> R.Option None)
  in
  let v2 =
    (match v2 with
    | Some x -> R.Option (Some (
        map_access_modifier env x
      ))
    | None -> R.Option None)
  in
  let v3 =
    (match v3 with
    | `Id_opt_type_args (v1, v2) -> R.Case ("Id_opt_type_args",
        let v1 = map_identifier env v1 in
        let v2 =
          (match v2 with
          | Some x -> R.Option (Some (
              map_type_arguments env x
            ))
          | None -> R.Option None)
        in
        R.Tuple [v1; v2]
      )
    | `Opt_type_arg_id (v1, v2) -> R.Case ("Opt_type_arg_id",
        let v1 =
          (match v1 with
          | Some x -> R.Option (Some (
              map_type_argument env x
            ))
          | None -> R.Option None)
        in
        let v2 = map_identifier env v2 in
        R.Tuple [v1; v2]
      )
    )
  in
  R.Tuple [v1; v2; v3]

let map_static_parameter_value (env : env) (x : CST.static_parameter_value) =
  (match x with
  | `Const x -> R.Case ("Const",
      map_const env x
    )
  | `Const_expres (v1, v2) -> R.Case ("Const_expres",
      let v1 = map_const env v1 in
      let v2 = map_expressions env v2 in
      R.Tuple [v1; v2]
    )
  )

let map_class_inherits_decl (env : env) ((v1, v2, v3, v4, v5) : CST.class_inherits_decl) =
  let v1 = (* "inherit" *) token env v1 in
  let v2 = map_type_ env v2 in
  let v3 = (* virtual_open_section *) token env v3 in
  let v4 =
    (match v4 with
    | Some x -> R.Option (Some (
        map_expressions env x
      ))
    | None -> R.Option None)
  in
  let v5 = (* virtual_end_section *) token env v5 in
  R.Tuple [v1; v2; v3; v4; v5]

let map_record_field (env : env) ((v1, v2, v3, v4, v5, v6) : CST.record_field) =
  let v1 =
    (match v1 with
    | Some x -> R.Option (Some (
        map_attributes env x
      ))
    | None -> R.Option None)
  in
  let v2 =
    (match v2 with
    | Some tok -> R.Option (Some (
        (* "mutable" *) token env tok
      ))
    | None -> R.Option None)
  in
  let v3 =
    (match v3 with
    | Some x -> R.Option (Some (
        map_access_modifier env x
      ))
    | None -> R.Option None)
  in
  let v4 = map_identifier env v4 in
  let v5 = (* ":" *) token env v5 in
  let v6 = map_type_ env v6 in
  R.Tuple [v1; v2; v3; v4; v5; v6]

let map_argument_spec (env : env) ((v1, v2, v3) : CST.argument_spec) =
  let v1 =
    (match v1 with
    | Some x -> R.Option (Some (
        map_attributes env x
      ))
    | None -> R.Option None)
  in
  let v2 =
    (match v2 with
    | Some x -> R.Option (Some (
        map_argument_name_spec env x
      ))
    | None -> R.Option None)
  in
  let v3 = map_type_ env v3 in
  R.Tuple [v1; v2; v3]

let map_union_type_field (env : env) (x : CST.union_type_field) =
  (match x with
  | `Type x -> R.Case ("Type",
      map_type_ env x
    )
  | `Id_COLON_type (v1, v2, v3) -> R.Case ("Id_COLON_type",
      let v1 = map_identifier env v1 in
      let v2 = (* ":" *) token env v2 in
      let v3 = map_type_ env v3 in
      R.Tuple [v1; v2; v3]
    )
  )

let map_do_ (env : env) ((v1, v2, v3, v4) : CST.do_) =
  let v1 = (* "do" *) token env v1 in
  let v2 = (* virtual_open_section *) token env v2 in
  let v3 = map_expressions env v3 in
  let v4 = (* virtual_end_section *) token env v4 in
  R.Tuple [v1; v2; v3; v4]

let rec map_simple_pattern (env : env) (x : CST.simple_pattern) =
  (match x with
  | `Id x -> R.Case ("Id",
      map_identifier env x
    )
  | `Simple_pat_COLON_type (v1, v2, v3) -> R.Case ("Simple_pat_COLON_type",
      let v1 = map_simple_pattern env v1 in
      let v2 = (* ":" *) token env v2 in
      let v3 = map_type_ env v3 in
      R.Tuple [v1; v2; v3]
    )
  )

let map_type_extension_elements (env : env) (v1 : CST.type_extension_elements) =
  (match v1 with
  | `With_virt_open_sect_type_defn_elemes_virt_end_sect (v1, v2, v3, v4) -> R.Case ("With_virt_open_sect_type_defn_elemes_virt_end_sect",
      let v1 = (* "with" *) token env v1 in
      let v2 = (* virtual_open_section *) token env v2 in
      let v3 = map_type_defn_elements env v3 in
      let v4 = (* virtual_end_section *) token env v4 in
      R.Tuple [v1; v2; v3; v4]
    )
  | `Type_defn_elemes x -> R.Case ("Type_defn_elemes",
      map_type_defn_elements env x
    )
  )

let map_additional_constr_init_expr (env : env) (x : CST.additional_constr_init_expr) =
  (match x with
  | `LCURL_class_inhers_decl_field_initis_RCURL (v1, v2, v3, v4) -> R.Case ("LCURL_class_inhers_decl_field_initis_RCURL",
      let v1 = (* "{" *) token env v1 in
      let v2 = map_class_inherits_decl env v2 in
      let v3 = map_field_expression env v3 in
      let v4 = (* "}" *) token env v4 in
      R.Tuple [v1; v2; v3; v4]
    )
  | `New_type_expres (v1, v2, v3) -> R.Case ("New_type_expres",
      let v1 = (* "new" *) token env v1 in
      let v2 = map_type_ env v2 in
      let v3 = map_expressions env v3 in
      R.Tuple [v1; v2; v3]
    )
  )

let map_record_fields (env : env) ((v1, v2, v3) : CST.record_fields) =
  let v1 = map_record_field env v1 in
  let v2 =
    R.List (List.map (fun (v1, v2) ->
      let v1 = (* virtual_end_decl *) token env v1 in
      let v2 = map_record_field env v2 in
      R.Tuple [v1; v2]
    ) v2)
  in
  let v3 =
    (match v3 with
    | Some tok -> R.Option (Some (
        (* ";" *) token env tok
      ))
    | None -> R.Option None)
  in
  R.Tuple [v1; v2; v3]

let map_union_type_fields (env : env) ((v1, v2) : CST.union_type_fields) =
  let v1 = map_union_type_field env v1 in
  let v2 =
    R.List (List.map (fun (v1, v2) ->
      let v1 = (* "*" *) token env v1 in
      let v2 = map_union_type_field env v2 in
      R.Tuple [v1; v2]
    ) v2)
  in
  R.Tuple [v1; v2]

let map_value_declaration (env : env) (x : CST.value_declaration) =
  (match x with
  | `Func_or_value_defn x -> R.Case ("Func_or_value_defn",
      map_function_or_value_defn env x
    )
  | `Do x -> R.Case ("Do",
      map_do_ env x
    )
  )

let map_primary_constr_args (env : env) ((v1, v2, v3, v4, v5) : CST.primary_constr_args) =
  let v1 =
    (match v1 with
    | Some x -> R.Option (Some (
        map_attributes env x
      ))
    | None -> R.Option None)
  in
  let v2 =
    (match v2 with
    | Some x -> R.Option (Some (
        map_access_modifier env x
      ))
    | None -> R.Option None)
  in
  let v3 = (* "(" *) token env v3 in
  let v4 =
    (match v4 with
    | Some (v1, v2) -> R.Option (Some (
        let v1 = map_simple_pattern env v1 in
        let v2 =
          R.List (List.map (fun (v1, v2) ->
            let v1 = (* "," *) token env v1 in
            let v2 = map_simple_pattern env v2 in
            R.Tuple [v1; v2]
          ) v2)
        in
        R.Tuple [v1; v2]
      ))
    | None -> R.Option None)
  in
  let v5 = (* ")" *) token env v5 in
  R.Tuple [v1; v2; v3; v4; v5]

let rec map_additional_constr_expr (env : env) (x : CST.additional_constr_expr) =
  (match x with
  | `Addi_constr_expr_SEMI_addi_constr_expr (v1, v2, v3) -> R.Case ("Addi_constr_expr_SEMI_addi_constr_expr",
      let v1 = map_additional_constr_expr env v1 in
      let v2 = (* ";" *) token env v2 in
      let v3 = map_additional_constr_expr env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `Addi_constr_expr_then_expres (v1, v2, v3) -> R.Case ("Addi_constr_expr_then_expres",
      let v1 = map_additional_constr_expr env v1 in
      let v2 = (* "then" *) token env v2 in
      let v3 = map_expressions env v3 in
      R.Tuple [v1; v2; v3]
    )
  | `If_expres_then_addi_constr_expr_else_addi_constr_expr (v1, v2, v3, v4, v5, v6) -> R.Case ("If_expres_then_addi_constr_expr_else_addi_constr_expr",
      let v1 = (* "if" *) token env v1 in
      let v2 = map_expressions env v2 in
      let v3 = (* "then" *) token env v3 in
      let v4 = map_additional_constr_expr env v4 in
      let v5 = (* "else" *) token env v5 in
      let v6 = map_additional_constr_expr env v6 in
      R.Tuple [v1; v2; v3; v4; v5; v6]
    )
  | `Let_func_or_value_defn_body_in_addi_constr_expr (v1, v2, v3, v4) -> R.Case ("Let_func_or_value_defn_body_in_addi_constr_expr",
      let v1 = (* "let" *) token env v1 in
      let v2 = map_function_or_value_defn_body env v2 in
      let v3 = (* "in" *) token env v3 in
      let v4 = map_additional_constr_expr env v4 in
      R.Tuple [v1; v2; v3; v4]
    )
  | `Addi_constr_init_expr x -> R.Case ("Addi_constr_init_expr",
      map_additional_constr_init_expr env x
    )
  )

let map_union_type_case (env : env) ((v1, v2) : CST.union_type_case) =
  let v1 =
    (match v1 with
    | Some x -> R.Option (Some (
        map_attributes env x
      ))
    | None -> R.Option None)
  in
  let v2 =
    (match v2 with
    | `Id x -> R.Case ("Id",
        map_identifier env x
      )
    | `Id_of_union_type_fields (v1, v2, v3) -> R.Case ("Id_of_union_type_fields",
        let v1 = map_identifier env v1 in
        let v2 = (* "of" *) token env v2 in
        let v3 = map_union_type_fields env v3 in
        R.Tuple [v1; v2; v3]
      )
    | `Id_COLON_type (v1, v2, v3) -> R.Case ("Id_COLON_type",
        let v1 = map_identifier env v1 in
        let v2 = (* ":" *) token env v2 in
        let v3 = map_type_ env v3 in
        R.Tuple [v1; v2; v3]
      )
    )
  in
  R.Tuple [v1; v2]

let map_class_type_body_inner (env : env) (x : CST.class_type_body_inner) =
  (match x with
  | `Class_inhers_decl x -> R.Case ("Class_inhers_decl",
      map_class_inherits_decl env x
    )
  | `Class_func_or_value_defn (v1, v2, v3) -> R.Case ("Class_func_or_value_defn",
      let v1 =
        (match v1 with
        | Some x -> R.Option (Some (
            map_attributes env x
          ))
        | None -> R.Option None)
      in
      let v2 =
        (match v2 with
        | Some tok -> R.Option (Some (
            (* "static" *) token env tok
          ))
        | None -> R.Option None)
      in
      let v3 =
        (match v3 with
        | `Func_or_value_defn x -> R.Case ("Func_or_value_defn",
            map_function_or_value_defn env x
          )
        | `Do_virt_open_sect_expres_virt_end_sect x -> R.Case ("Do_virt_open_sect_expres_virt_end_sect",
            map_do_ env x
          )
        )
      in
      R.Tuple [v1; v2; v3]
    )
  | `Type_defn_elemes x -> R.Case ("Type_defn_elemes",
      map_type_defn_elements env x
    )
  )

let map_union_type_cases (env : env) ((v1, v2, v3) : CST.union_type_cases) =
  let v1 =
    (match v1 with
    | Some tok -> R.Option (Some (
        (* "|" *) token env tok
      ))
    | None -> R.Option None)
  in
  let v2 = map_union_type_case env v2 in
  let v3 =
    R.List (List.map (fun (v1, v2) ->
      let v1 = (* "|" *) token env v1 in
      let v2 = map_union_type_case env v2 in
      R.Tuple [v1; v2]
    ) v3)
  in
  R.Tuple [v1; v2; v3]

let map_class_type_body (env : env) ((v1, v2, v3, v4) : CST.class_type_body) =
  let v1 = (* virtual_open_section *) token env v1 in
  let v2 = map_class_type_body_inner env v2 in
  let v3 =
    R.List (List.map (fun (v1, v2) ->
      let v1 = (* virtual_end_decl *) token env v1 in
      let v2 = map_class_type_body_inner env v2 in
      R.Tuple [v1; v2]
    ) v3)
  in
  let v4 = (* virtual_end_section *) token env v4 in
  R.Tuple [v1; v2; v3; v4]

let map_type_defn_body (env : env) (x : CST.type_defn_body) =
  (match x with
  | `Dele_type_defn (v1, v2, v3, v4, v5) -> R.Case ("Dele_type_defn",
      let v1 = map_type_name env v1 in
      let v2 = (* "=" *) token env v2 in
      let v3 = (* virtual_open_section *) token env v3 in
      let v4 = map_delegate_signature env v4 in
      let v5 = (* virtual_end_section *) token env v5 in
      R.Tuple [v1; v2; v3; v4; v5]
    )
  | `Record_type_defn (v1, v2, v3, v4, v5, v6, v7, v8, v9, v10) -> R.Case ("Record_type_defn",
      let v1 = map_type_name env v1 in
      let v2 = (* "=" *) token env v2 in
      let v3 = (* virtual_open_section *) token env v3 in
      let v4 = (* "{" *) token env v4 in
      let v5 = (* virtual_open_section *) token env v5 in
      let v6 = map_record_fields env v6 in
      let v7 = (* virtual_end_section *) token env v7 in
      let v8 = (* "}" *) token env v8 in
      let v9 =
        (match v9 with
        | Some x -> R.Option (Some (
            map_type_extension_elements env x
          ))
        | None -> R.Option None)
      in
      let v10 = (* virtual_end_section *) token env v10 in
      R.Tuple [v1; v2; v3; v4; v5; v6; v7; v8; v9; v10]
    )
  | `Union_type_defn (v1, v2, v3, v4, v5, v6) -> R.Case ("Union_type_defn",
      let v1 = map_type_name env v1 in
      let v2 = (* "=" *) token env v2 in
      let v3 = (* virtual_open_section *) token env v3 in
      let v4 = map_union_type_cases env v4 in
      let v5 =
        (match v5 with
        | Some x -> R.Option (Some (
            map_type_extension_elements env x
          ))
        | None -> R.Option None)
      in
      let v6 = (* virtual_end_section *) token env v6 in
      R.Tuple [v1; v2; v3; v4; v5; v6]
    )
  | `Anon_type_defn (v1, v2, v3, v4, v5, v6) -> R.Case ("Anon_type_defn",
      let v1 = map_type_name env v1 in
      let v2 = map_primary_constr_args env v2 in
      let v3 = (* "=" *) token env v3 in
      let v4 = (* virtual_open_section *) token env v4 in
      let v5 = map_class_type_body env v5 in
      let v6 = (* virtual_end_section *) token env v6 in
      R.Tuple [v1; v2; v3; v4; v5; v6]
    )
  | `Enum_type_defn (v1, v2, v3, v4, v5) -> R.Case ("Enum_type_defn",
      let v1 = map_type_name env v1 in
      let v2 = (* "=" *) token env v2 in
      let v3 = (* virtual_open_section *) token env v3 in
      let v4 = map_enum_type_cases env v4 in
      let v5 = (* virtual_end_section *) token env v5 in
      R.Tuple [v1; v2; v3; v4; v5]
    )
  | `Type_abbrev_defn (v1, v2, v3, v4, v5) -> R.Case ("Type_abbrev_defn",
      let v1 = map_type_name env v1 in
      let v2 = (* "=" *) token env v2 in
      let v3 = (* virtual_open_section *) token env v3 in
      let v4 = map_type_ env v4 in
      let v5 = (* virtual_end_section *) token env v5 in
      R.Tuple [v1; v2; v3; v4; v5]
    )
  | `Type_exte (v1, v2) -> R.Case ("Type_exte",
      let v1 = map_type_name env v1 in
      let v2 = map_type_extension_elements env v2 in
      R.Tuple [v1; v2]
    )
  )

let rec map_module_elem (env : env) (x : CST.module_elem) =
  (match x with
  | `Blk_comm x -> R.Case ("Blk_comm",
      map_block_comment env x
    )
  | `Line_comm tok -> R.Case ("Line_comm",
      (* line_comment *) token env tok
    )
  | `Value_decl x -> R.Case ("Value_decl",
      map_value_declaration env x
    )
  | `Module_defn (v1, v2, v3, v4, v5, v6, v7, v8) -> R.Case ("Module_defn",
      let v1 =
        (match v1 with
        | Some x -> R.Option (Some (
            map_attributes env x
          ))
        | None -> R.Option None)
      in
      let v2 = (* "module" *) token env v2 in
      let v3 =
        (match v3 with
        | Some x -> R.Option (Some (
            map_access_modifier env x
          ))
        | None -> R.Option None)
      in
      let v4 = map_identifier env v4 in
      let v5 = (* "=" *) token env v5 in
      let v6 = (* virtual_open_section *) token env v6 in
      let v7 = R.List (List.map (map_module_elem env) v7) in
      let v8 = (* virtual_end_section *) token env v8 in
      R.Tuple [v1; v2; v3; v4; v5; v6; v7; v8]
    )
  | `Module_abbrev (v1, v2, v3, v4, v5, v6) -> R.Case ("Module_abbrev",
      let v1 = (* "module" *) token env v1 in
      let v2 = map_identifier env v2 in
      let v3 = (* "=" *) token env v3 in
      let v4 = (* virtual_open_section *) token env v4 in
      let v5 = map_long_identifier env v5 in
      let v6 = (* virtual_end_section *) token env v6 in
      R.Tuple [v1; v2; v3; v4; v5; v6]
    )
  | `Import_decl (v1, v2) -> R.Case ("Import_decl",
      let v1 = (* "open" *) token env v1 in
      let v2 = map_long_identifier env v2 in
      R.Tuple [v1; v2]
    )
  | `Comp_dire_decl (v1, v2) -> R.Case ("Comp_dire_decl",
      let v1 = (* "#nowarn" *) token env v1 in
      let v2 = R.List (List.map (map_string_ env) v2) in
      R.Tuple [v1; v2]
    )
  | `Fsi_dire_decl x -> R.Case ("Fsi_dire_decl",
      map_fsi_directive_decl env x
    )
  | `Type_defi (v1, v2, v3, v4) -> R.Case ("Type_defi",
      let v1 =
        (match v1 with
        | Some x -> R.Option (Some (
            map_attributes env x
          ))
        | None -> R.Option None)
      in
      let v2 = (* "type" *) token env v2 in
      let v3 = map_type_defn_body env v3 in
      let v4 =
        R.List (List.map (fun (v1, v2, v3) ->
          let v1 =
            (match v1 with
            | Some x -> R.Option (Some (
                map_attributes env x
              ))
            | None -> R.Option None)
          in
          let v2 = (* "and" *) token env v2 in
          let v3 = map_type_defn_body env v3 in
          R.Tuple [v1; v2; v3]
        ) v4)
      in
      R.Tuple [v1; v2; v3; v4]
    )
  )

let map_file (env : env) (x : CST.file) =
  (match x with
  | `Named_module (v1, v2, v3, v4) -> R.Case ("Named_module",
      let v1 = (* "module" *) token env v1 in
      let v2 =
        (match v2 with
        | Some x -> R.Option (Some (
            map_access_modifier env x
          ))
        | None -> R.Option None)
      in
      let v3 = map_long_identifier env v3 in
      let v4 = R.List (List.map (map_module_elem env) v4) in
      R.Tuple [v1; v2; v3; v4]
    )
  | `Name (v1, v2, v3) -> R.Case ("Name",
      let v1 = (* "namespace" *) token env v1 in
      let v2 =
        (match v2 with
        | `Global tok -> R.Case ("Global",
            (* "global" *) token env tok
          )
        | `Long_id x -> R.Case ("Long_id",
            map_long_identifier env x
          )
        )
      in
      let v3 = R.List (List.map (map_module_elem env) v3) in
      R.Tuple [v1; v2; v3]
    )
  | `Rep1_choice_blk_comm xs -> R.Case ("Rep1_choice_blk_comm",
      R.List (List.map (map_module_elem env) xs)
    )
  )

let dump_tree root =
  map_file () root
  |> Tree_sitter_run.Raw_tree.to_channel stdout
let dump_extras (extras : CST.extras) = ()
