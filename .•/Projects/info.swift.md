# Swift UI

---


```
/*
• ––––––––––––––––––––––––––––––––––––––––––––––––– •
| Views                                             |
• ––––––––––––––––––––––––––––––––––––––––––––––––– •
*/


// Text                    :: Displays a read-only text view.
// Image                   :: Displays an image from the app’s assets or from a URL.
// Button                  :: Creates a tappable button that performs an action when pressed.
// TextField               :: Creates an editable text field for user input.
// SecureField             :: Creates a text field that hides the input for secure text, like passwords.
// Toggle                  :: Creates a switch for binary choices (on/off).
// Slider                  :: Creates a slider for selecting a value from a range.
// Stepper                 :: Creates a control for incrementing or decrementing values.
// Picker                  :: Creates a control for selecting from a list of options.
// List                    :: Displays a scrollable list of views.
// Form                    :: A container for grouping and styling input controls and other views.
// ScrollView              :: Creates a scrollable view that can contain other views.
// NavigationView          :: Creates a navigation-based container for managing navigation stacks.
// NavigationLink          :: Creates a link to navigate between views in a NavigationView.
// TabView{}               :: Creates a tab-based navigation interface for switching between different views.
// VStack{}                :: Arranges child views vertically in a stack.
// HStack{}                :: Arranges child views horizontally in a stack.
// ZStack{}                :: Overlays child views on top of each other.
// Group                   :: Groups multiple views into a single view without affecting layout.
// Divider                 :: Creates a horizontal or vertical line to separate content.
// Label                   :: A view that combines an icon and text into a single component.
// ProgressView            :: Displays a progress indicator to show the progress of a task.
// DisclosureGroup         :: Creates a collapsible section that can be expanded or collapsed.
// Menu                    :: Creates a menu with a list of items that can be selected.
// LazyVStack              :: A vertically scrolling stack that only renders items as they come into view.
// LazyHStack              :: A horizontally scrolling stack that only renders items as they come into view.
// LazyVGrid               :: A grid that arranges items in a vertical orientation with lazy loading.
// LazyHGrid               :: A grid that arranges items in a horizontal orientation with lazy loading.
// Color                   :: A view representing a color that can be used for backgrounds, shapes, and more.
// Shape                   :: A protocol for creating custom shapes.
// Path                    :: A drawing context used to create custom shapes and paths.
// Canvas                  :: A view that provides a drawing context for custom graphics.

/*
• ––––––––––––––––––––––––––––––––––––––––––––––––– •
| Layout                                            |
• ––––––––––––––––––––––––––––––––––––––––––––––––– •
*/


alignment                  :: Aligns content within a container, such as in stacks or frames.
alignmentGuide             :: Provides custom alignment for views, affecting how they align relative to each other.
spacing                    :: Defines the space between elements in a stack or grid.
GeometryReader             :: Provides access to the size and position of the container view, allowing for dynamic layouts.
frame                      :: Sets the size and alignment of a view.
maxWidth                   :: Specifies the maximum width a view can expand to.
maxHeight                  :: Specifies the maximum height a view can expand to.
idealWidth                 :: Suggests an ideal width for a view, influencing layout decisions.
idealHeight                :: Suggests an ideal height for a view, influencing layout decisions.
position                   :: Sets the position of a view within its coordinate space.
offset                     :: Moves a view from its original position by a specified distance.
padding                    :: Adds space around the content of a view, affecting its layout.
fixedSize                  :: Prevents a view from expanding or contracting based on its container.
clipShape                  :: Clips the view to a specific shape, affecting its visible area.
mask                       :: Applies a mask to the view, affecting its visible area.
background                 :: Adds a background view behind the current view.
overlay                    :: Adds a view on top of the current view.
layoutPriority             :: Determines the priority of a view in a flexible layout, affecting how space is allocated.
edgesIgnoringSafeArea      :: Extends the view to the edges of the screen, ignoring safe area insets.
safeAreaInset              :: Adds insets to the safe area, affecting the view's placement.

/*
• ––––––––––––––––––––––––––––––––––––––––––––––––– •
| Modifiers                                         |
• ––––––––––––––––––––––––––––––––––––––––––––––––– •
*/


frame                       :: Sets the size and alignment of a view.
padding                     :: Adds space around the content of a view.
background                  :: Adds a background view behind the current view.
overlay                     :: Adds a view on top of the current view.
clipShape                   :: Clips the view to a specific shape.
mask                        :: Applies a mask to the view, affecting its visible area.
cornerRadius                :: Sets the corner radius for rounded corners on a view.
shadow                      :: Adds a shadow behind the view, with customizable color and radius.
opacity                     :: Adjusts the opacity of a view, making it more or less transparent.
rotationEffect              :: Rotates a view by a specified angle.
scaleEffect                 :: Scales a view by a specified factor.
offset                      :: Moves a view from its original position by a specified distance.
position                    :: Sets the position of a view within its coordinate space.
zIndex                      :: Controls the stacking order of overlapping views.
aspectRatio                 :: Sets the aspect ratio of a view, preserving its proportion.
fixedSize                   :: Prevents a view from expanding or contracting based on its container.
layoutPriority              :: Determines the priority of a view in a flexible layout.
edgesIgnoringSafeArea       :: Extends the view to the edges of the screen, ignoring safe area insets.
safeAreaInset               :: Adds insets to the safe area, affecting the view's placement.
hidden                      :: Hides the view while preserving its layout space.
contentShape                :: Defines the shape used for hit-testing and gesture recognition.
animation                   :: Adds animation to view changes or transitions.


/*
• ––––––––––––––––––––––––––––––––––––––––––––––––– •
| Gestures                                          |
• ––––––––––––––––––––––––––––––––––––––––––––––––– •
*/


onTapGesture               :: Adds a tap gesture recognizer to a view, triggering an action on tap.
onLongPressGesture         :: Adds a long press gesture recognizer to a view, triggering an action on long press.
onDragGesture              :: Adds a drag gesture recognizer to a view, allowing for dragging movements.
onChange                   :: Responds to changes in a value, triggering an action when the value changes.
onDisappear                :: Responds to the view disappearing from the screen, triggering an action when it disappears.


/*
• ––––––––––––––––––––––––––––––––––––––––––––––––– •
| Controls and Actions                              |
• ––––––––––––––––––––––––––––––––––––––––––––––––– •
*/


action                     :: Defines the action to perform when a control (e.g., button) is interacted with.
label                      :: Defines the content and appearance of a control, such as a button or picker item.
isActive                   :: Indicates whether a view or control (e.g., navigation link) is currently active.
isOn                       :: Indicates whether a toggle switch is in the on position.
isEditing                  :: Indicates whether a text field is currently being edited.
isExpanded                 :: Indicates whether a view (e.g., disclosure group) is currently expanded.


/*
• ––––––––––––––––––––––––––––––––––––––––––––––––– •
| Environment                                       |
• ––––––––––––––––––––––––––––––––––––––––––––––––– •
*/


@Environment               :: Reads a value from the environment, such as system-wide settings or preferences.
@EnvironmentObject         :: Reads an observable object from the environment, allowing shared state across views.
@State                     :: Manages a view’s local state, triggering updates when the state changes.
@Binding                   :: Creates a two-way binding to a value, allowing modifications to propagate to the source.
@ObservedObject            :: Observes an object that conforms to `ObservableObject`, updating the view when the object changes.


/*
• ––––––––––––––––––––––––––––––––––––––––––––––––– •
| Data Flow                                         |
• ––––––––––––––––––––––––––––––––––––––––––––––––– •
*/


ObservableObject           :: A class that can be observed for changes, used for managing and responding to state changes.
Published                  :: A property wrapper that publishes changes to a value, triggering updates in views.
Binding                    :: A property wrapper that creates a two-way connection to a value, allowing for dynamic updates.




/*
• ––––––––––––––––––––––––––––––––––––––––––––––––– •
| Other                                             |
• ––––––––––––––––––––––––––––––––––––––––––––––––– •
*/


onAppear                  :: Adds an action to perform when the view appears on the screen.
onDisappear               :: Adds an action to perform when the view disappears from the screen.
transition                :: Defines the animation transition for view changes, such as appearing or disappearing.
task                      :: Runs a task asynchronously, often used for background operations or network requests.
refreshable               :: Allows a view to be refreshed with a pull-to-refresh gesture.
toolbar                   :: Adds a toolbar to a view, typically used in navigation and form contexts.
listRowInsets             :: Defines the insets for rows in a list, affecting their layout and spacing.



```