fn main() {
    let mut b = 7;
    let mut a = 0;

    breakpoint!{_main01}

    a = 1;
    core::hint::black_box(&a);
    a = 2;
    println!("a : {}",a);

    breakpoint!{_main02}
}
fn _main01() {}
fn _main02() {}

macro_rules! breakpoint {($FN_LABEL:ident) => {
  #[cfg(debug_assertions)]
  { 
    extern crate core;
    core::hint::black_box::<()>($FN_LABEL());
  }
};}
pub(crate) use breakpoint;

// gdb script
/*

  set width 0
  set height 0
  set verbose off
  set debuginfod enabled off
  # set logging on


  break asm_learn::_main01
  break asm_learn::_main02
  run

  # _main01
  finish
  info locals
  continue

  # _main02
  finish
  info locals
  continue

  q
  y
*/
