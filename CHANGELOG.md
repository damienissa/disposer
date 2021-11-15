## 0.0.5
* Updated README.md
## 0.0.4
* Updated README.md
## 0.0.3 
* Updated feature builder. 
    Now you can use this naьing types:
    ``` dart
        -n example
        --name example
        -n Example
        --name Example
        -n ExampleFeature
        --name ExampleFeature
    ```
    Also, added output path parameter. Default path is: `lib/features`:
    ``` dart
        -o lib/src/features
        --output lib/src/features
    ```
    Example:
    ``` dart
        flutter pub run disposer --name NewFeature --output lib/src/features
    ```

## 0.0.2

* Implemented feature builder. Now you can run this command to generate Disposable Module.
    ``` dart
    flutter pub run disposer -n Example
    ```


## 0.0.1

* Created new package that provides Disposable feature
