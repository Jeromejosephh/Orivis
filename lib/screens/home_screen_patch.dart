// Quick guide to manual fixes for home_screen.dart overflow issues:
// 
// 1. Stat cards (OK, Defects, Pass Rate boxes):
//    Replace: Text('$okCount', style: const TextStyle(fontSize: 28...))
//    With: FittedBox(child: Text('$okCount', style: const TextStyle(fontSize: 28...)))
//    
//    And add maxLines: 1, overflow: TextOverflow.ellipsis to the label text
//    
// 2. Empty state section (lines ~430-450):
//    Wrap the entire Column in SingleChildScrollView
//    Wrap the button in: SizedBox(width: double.infinity, child: FilledButton...)
//    Add textAlign: TextAlign.center to the title text
