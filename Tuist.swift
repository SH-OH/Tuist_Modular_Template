import ProjectDescription

let config = Config(
    project: .tuist(
        compatibleXcodeVersions: .all,
        swiftVersion: .init(6, 1, 0),
        plugins: [
            .local(path: .relativeToRoot("Plugin/DependencyPlugin")),
            .local(path: .relativeToRoot("Plugin/ConfigurationPlugin")),
            .local(path: .relativeToRoot("Plugin/EnvironmentPlugin")),
            .local(path: .relativeToRoot("Plugin/TemplatePlugin"))
        ],
        generationOptions: .options(staticSideEffectsWarningTargets: .all),
        installOptions: .options()
    )
)
