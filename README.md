# MyIdeas
A sample iOS app built using the Clean Swift architecture.

# Project Structure
```
├── Core
│   ├── Enums
│   │   └── CategoriesEnum.swift
│   ├── Gateways
│   │   └── IdeaGatewayProtocol.swift
│   ├── Structs
│   │   └── IdeaStruct.swift
│   └── Usecases
│       ├── ListIdeasUsecase.swift
│       └── SaveIdeaUsecase.swift
├── CoreTests
│   ├── Doubles
│   │   └── Gateways
│   │       └── IdeaGatewayFake.swift
│   ├── Info.plist
│   └── Usecases
│       ├── ListIdeasUsecaseTests.swift
│       └── SaveIdeaUsecaseTests.swift
├── Frameworks
├── IdeaGatewayRealm.swift
├── MyIdeas
│   ├── Application
│   │   ├── AppDelegate.swift
│   │   ├── Assets.xcassets
│   │   │   └── AppIcon.appiconset
│   │   │       └── Contents.json
│   │   └── Info.plist
│   ├── Views
│   │   ├── Base.lproj
│   │   │   └── LaunchScreen.storyboard
│   │   └── Main.storyboard
│   └── ViewsControllers
│       ├── CategoriesListTableViewController.swift
│       ├── DescriptionViewController.swift
│       ├── IdeaFormTableViewController.swift
│       └── IdeasListTableViewController.swift
├── MyIdeas.xcodeproj
├── MyIdeas.xcworkspace
├── README.md
└── Shared
    ├── Factories
    │   ├── ListIdeasUsecaseFactory.swift
    │   └── SaveIdeaUsecaseFactory.swift
    └── Models
        └── Idea.swift
```