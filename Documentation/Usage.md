#  Usage

### Table of Contents

* [UITableViewCell](#uitableviewcell)
* [UITableView](#uitableview)


### UITableViewCell

Considering you have a custom cell declared like the example below, whether created as a `XIB` on in a `Storyboard`, and linked to this class: 
```swift
class MyFancyCustomCell: UITableViewCell {}
```
Simply use the static variable `reuseIdentifier` to dequeue the cell from the `UITableView`.

```swift
override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: MyFancyCustomCell.reuseIdentifier, for: indexPath)
    // Do whatever you need with your cell 
    return cell
}
```

### UITableView

If you need to register a XIB to your `UITableView`, simply use the following function. It will use the `reuseIdentifier` declared in [UITableViewCell](#uitableviewcell).
```swift
tableView.register(MyFancyCustomCell.self)
```