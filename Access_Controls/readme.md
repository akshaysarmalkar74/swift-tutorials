# Access Control
Access Control is use for protecting or some variables / functions / classes and many more from other.
There are 5 keywords
- open
- public
- internal
- fileprivate
- private

## Open
Open is the least restrictive. If you use open keyword with some class then that call can be extended anywhere where the file / frameword is used.

## Public
If classes are declare with public then, we can use them to create new object but we cannot create new classes based on that class. It is like it is accessible but you cannot modify it.

## Internal
It is the default keyword. If we do not explicitly set any access control it means that it is internal. Internal keyword allows us to access that thing any where in our project.

## Fileprivate
The properties or things which have fileprivate keyword are those which are accessible in that particular file only. It is not used frequently as usually we won't have multiple classes in a file.

## Private
This is the most safe one. The properties or methods are declare with private access are only accessible in that particular class only or in extension of that class, but the extension of that class should be present in that file only. It won't work if it is present in another file