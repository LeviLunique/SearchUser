# SearchUser

SearchUser is an iOS application built with SwiftUI that allows users to search for user details.

## Features

The application provides the following features:

- Search for users
- View details of a user
- Filter the list of users

## Project Structure

The project follows the MVVM (Model-View-ViewModel) pattern and is structured as follows:

- `Model`: Contains the model classes like `User`.
- `View`: Contains all the SwiftUI views and components like `UserDetailView`, `UserListView` and `UserRow`.
- `ViewModel`: Contains the `UserFetcher` class which is responsible for fetching user data.

## Tests

There are two sets of tests in the project:

- `SearchUserTests`: Unit tests that verify the logic of fetching users.
- `SearchUserUITests`: User interface tests that verify the user interaction with the interface.

## How to Run

1. Clone the repository.
2. Open the `SearchUser.xcodeproj` file in Xcode.
3. Press `Cmd+R` to run the application on the selected simulator.

## How to Test

1. Open the project in Xcode.
2. Press `Cmd+U` to run all tests.

## Contributing

Contributions are welcome! Feel free to open an Issue or a Pull Request.

## License

SearchUser is released under the MIT license. See [LICENSE](./LICENSE) for more details.
