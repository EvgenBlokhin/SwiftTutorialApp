//
//  MockData.swift
//  SwiftTutorial
//
//  Created by dev on 30/01/2026.
//

import UIKit

final class QuestionsMockData {
    static let shared = QuestionsMockData()

    // Темы с вопросами
    let topicQuestions: [TopicQuestion]

    // Раздел "Задачи"
    let topicTasks: [TopicTask]

    private init() {
        self.topicQuestions = [
            TopicQuestion(
                        id: UUID(),
                        name: "Swift Basic",
                        questions: [
                            Question(
                                id: UUID(),
                                text: "Что такое Swift и где он используется?",
                                answer: "Swift — это современный компилируемый язык программирования, разработанный Apple для создания приложений на iOS, macOS, watchOS и tvOS. Он отличается безопасностью типов, автоматическим управлением памятью, современным синтаксисом и высокой производительностью."
                            ),
                            Question(
                                id: UUID(),
                                text: "В чём разница между struct и class?",
                                answer: "Struct — value type (копируется при присвоении/передаче), class — reference type (копируется ссылка). Struct не поддерживает наследование, class — поддерживает. Это важно для управления памятью и поведения в многопоточности."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое опционалы и зачем они нужны?",
                                answer: "Опционалы (Int?, String?) позволяют переменной хранить либо значение, либо nil. Это предотвращает ошибки, связанные с отсутствием значения, и заставляет программиста обрабатывать такие случаи явно."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как безопасно развернуть опционал?",
                                answer: "• if let — разворачивает, если не nil.\n• guard let — разворачивает и выходит из функции/блока, если nil."
                            ),
                            Question(
                                id: UUID(),
                                text: "Объясните ARC (Automatic Reference Counting).",
                                answer: "ARC — система автоматического подсчёта ссылок в Swift: когда на объект не осталось сильных ссылок, память освобождается автоматически."
                            ),
                            Question(
                                id: UUID(),
                                text: "В чём разница между weak и unowned?",
                                answer: "• weak — optional, ссылка ослабленная, может стать nil.\n• unowned — не optional, предполагает, что объект всегда будет существовать, пока используется ссылка; небезопасен, если объект уже освобождён."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое retain cycle и как его избежать?",
                                answer: "Retain cycle — цикл сильных ссылок (например, между двумя классами), из‑за которого ARC не освобождает объекты. Избегают с помощью weak/unowned или разрыва ссылок."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое протокол в Swift?",
                                answer: "Протокол — набор требований (методов/свойств) без реализации, который могут реализовать классы/struct/enum для обеспечения интерфейса."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое generics?",
                                answer: "Generics позволяют писать обобщённый код, работающий с разными типами: например, функции/структуры, принимающие тип T."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что делает ключевое слово defer?",
                                answer: "Код в defer выполняется при выходе из текущего блока, часто используется для очистки ресурсов."
                            ),
                            Question(
                                id: UUID(),
                                text: "Объясните разницу между let и var.",
                                answer: "let создаёт константу (неизменяемую), var создаёт переменную (изменяемую)."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое computed properties?",
                                answer: "Вычисляемые свойства имеют геттер/сеттер, возвращающие/устанавливающие значение на основе логики, а не хранения."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое property observers (willSet/didSet)?",
                                answer: "Это наблюдатели, которые срабатывают до (willSet) и после (didSet) изменения значения свойства."
                            ),
                            Question(
                                id: UUID(),
                                text: "Объясните typealias.",
                                answer: "Alias (псевдоним) для существующего типа, упрощающий чтение кода."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое @escaping closure?",
                                answer: "@escaping указывает, что замыкание может быть вызвано после выхода из функции (например, асинхронно)."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что делает lazy свойство?",
                                answer: "Инициализируется только при первом доступе, а не при создании объекта."
                            ),
                            Question(
                                id: UUID(),
                                text: "Explain value types vs reference types.",
                                answer: "Value types копируются при передаче; reference types передаётся ссылка на один объект."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что делает ключевое слово mutating в struct?",
                                answer: "Позволяет изменять свойства struct внутри методов."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как работают map, filter, reduce?",
                                answer: "Это функции высшего порядка для работы с коллекциями: трансформация, фильтрация, аккумуляция значений."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое Codable?",
                                answer: "Протокол для кодирования/декодирования данных (например, JSON ↔️ Swift структуры)."
                            ),
                            Question(
                                id: UUID(),
                                text: "Расскажите про init() и deinit.",
                                answer: "init() — инициализация объекта; deinit — деструктор, вызывается перед освобождением памяти."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое guard и когда его использовать?",
                                answer: "Условие, которое проверяет состояние и выходит из функции, если условие не выполнено — повышает читаемость."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое associatedtype в протоколах?",
                                answer: "Псевдоним типа, который реализующий класс/структура конкретизирует при реализации протокола."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое Any и AnyObject?",
                                answer: "Any — любой тип; AnyObject — только reference type (классы)."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое dynamic и зачем он нужен?",
                                answer: "Указывает, что вызов метода должен использовать динамическую диспетчеризацию (Objective‑C runtime)."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое @objc?",
                                answer: "Делает Swift API доступным Objective‑C runtime/кодам."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое DispatchQueue.main.async?",
                                answer: "Асинхронно выполняет блок на главном потоке (обновление UI)."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что делает Result type?",
                                answer: "Представляет успешный (success) или ошибочный (failure) результат выполнения операции."
                            ),
                            Question(
                                id: UUID(),
                                text: "Объясните switch с enum.",
                                answer: "switch позволяет обрабатывать все возможные случаи enum, поддерживает сопоставление с образцом."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое throw/try/catch?",
                                answer: "Механизм обработки ошибок: функция может throw, вызов должен использовать try, ошибки обрабатываются блоком catch."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое Optional chaining?",
                                answer: "Позволяет безопасно обращаться к свойствам/методам Optional, возвращая nil, если Optional nil."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что делает ключевое слово static?",
                                answer: "Объявляет член типа, доступный без создания экземпляра."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое type inference?",
                                answer: "Компилятор определяет тип значения автоматически."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое closure capture list?",
                                answer: "Позволяет контролировать захват значений внутри замыкания (например, [weak self])."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что делает defer при выходе из блока?",
                                answer: "Выполняет код в конце блока вне зависимости от точки выхода."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое UICollectionViewDiffableDataSource?",
                                answer: "Абстракция для безопасного и анимированного обновления коллекций."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как работает @Published в Combine?",
                                answer: "Позволяет публиковать изменения свойства в реактивную цепочку подписчиков."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое actor в Swift Concurrency?",
                                answer: "Специализированный reference type для управления доступом к состоянию в многопоточности."
                            ),
                            Question(
                                id: UUID(),
                                text: "Объясните async/await в Swift.",
                                answer: "Синтаксис для написания асинхронного кода последовательно без callback‑hell."
                            ),
                            Question(
                                id: UUID(),
                                text: "Объясните Task и TaskGroup.",
                                answer: "Task представляет асинхронную единицу; TaskGroup позволяет группировать задачи для параллельного выполнения."
                            ),
                            Question(
                                id: UUID(),
                                text: "Объясните Equatable и Comparable.",
                                answer: "Equatable позволяет сравнивать объекты на равенство (==, !=).\nComparable расширяет Equatable и добавляет сравнения по порядку (<, >, <=, >=). Эти протоколы часто используются для сортировки коллекций."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое Hashable?",
                                answer: "Hashable нужен для типов, которые используются в коллекциях, основанных на хэшировании (Set, ключи словаря), так как требует реализации функции hash(into:)."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что делает @propertyWrapper?",
                                answer: "Позволяет создавать собственные обёртки над свойствами, инкапсулирующие общую логику (например, сохранение в UserDefaults) и переиспользовать её в разных местах."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое closure capture list и зачем он нужен?",
                                answer: "Список захвата контролирует, как замыкание захватывает значения (например, [weak self]), чтобы избежать retain cycle."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое type inference?",
                                answer: "Swift может автоматически определять тип переменной по её значению без явного указания типа."
                            ),
                            Question(
                                id: UUID(),
                                text: "Отличие guard от if.",
                                answer: "guard используется для раннего выхода при несоответствии условия, повышает читаемость кода и уменьшает вложенность."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое protocol extension?",
                                answer: "Позволяет добавить реализацию по умолчанию для методов/свойств протокола, снижает дублирование кода."
                            ),
                            Question(
                                id: UUID(),
                                text: "Объясните Associated Types в протоколах.",
                                answer: "Типы, которые не фиксированы в самом протоколе, а указываются при реализации, позволяют писать обобщённые интерфейсы."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое Any vs AnyObject.",
                                answer: "Any — любой тип (value или reference), AnyObject — только классы/reference types. Это помогает ограничивать протоколы/функции."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что означает fallthrough в switch?",
                                answer: "fallthrough заставляет выполнение перейти к следующему case, даже если логика совпадения уже завершилась."
                            ),
                            Question(
                                id: UUID(),
                                text: "Разница между == и ===.",
                                answer: "== сравнивает значения типов, реализующих Equatable; === проверяет, ссылаются ли две переменные на один и тот же объект (только для классов)."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое defer и когда его применять?",
                                answer: "Блок defer {} выполняется при выходе из текущего контекста (scope), удобно для освобождения ресурсов (например, закрытие файлов/сокетов)."
                            ),
                            Question(
                                id: UUID(),
                                text: "Какие виды циклов существуют в Swift?",
                                answer: "for-in, while, repeat-while. Все они позволяют повторять блок кода, но отличаются условиями старта/проверки."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как реализуется условная компиляция (#if).",
                                answer: "Позволяет компилировать разные блоки кода для разных конфигураций/платформ (например, #if DEBUG, #if os(iOS))."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое CustomStringConvertible?",
                                answer: "Протокол, который позволяет управлять тем, как объект представляется в виде строки (например, вывод в консоли)."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое @dynamicCallable и @dynamicMemberLookup?",
                                answer: "Они позволяют типам реагировать на вызов функций/членов динамически, как в динамических языках. Используется редко, но полезно в DSL."
                            ),
                            Question(
                                id: UUID(),
                                text: "Каков эффект @discardableResult?",
                                answer: "Указывает, что возвращаемое значение функции можно игнорировать без предупреждений компилятора."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое subscripts?",
                                answer: "Позволяет индексировать типы так же, как массив/словарь (instance[index]), удобно для доступа к внутренним значениям."
                            ),
                            Question(
                                id: UUID(),
                                text: "Когда используется enum с ассоциированными значениями?",
                                answer: "Когда каждому варианту enum нужно хранить связанные данные (например, .success(Data) / .error(Error))."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое Result в Swift и как его использовать?",
                                answer: "Тип, представляющий успешный (.success) или неудачный (.failure) результат операции, обычно применяют в асинхронных вызовах."
                            )
                        ]
                    ),
            TopicQuestion(
                        id: UUID(),
                        name: "UIKit & SwiftUI",
                        questions: [
                            Question(
                                id: UUID(),
                                text: "В чём разница между UIKit и SwiftUI?",
                                answer: "UIKit — императивный фреймворк для построения интерфейсов, где вы явно указываете пошагово, что делать. SwiftUI — декларативный фреймворк, где вы описываете, что должно отображаться, а система сама управляет обновлениями UI на основе данных."
                            ),
                            Question(
                                id: UUID(),
                                text: "Опишите жизненный цикл UIViewController.",
                                answer: "• loadView() — загрузка view,\n• viewDidLoad() — настройка после загрузки,\n• viewWillAppear() — перед появлением на экране,\n• viewDidAppear() — после появления,\n• viewWillDisappear() / viewDidDisappear() — перед и после исчезновения."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое Auto Layout и как он работает?",
                                answer: "Auto Layout — система constraints iOS, которая описывает отношения между элементами UI и позволяет адаптировать layout под разные размеры экранов; движок решает оптимальные размеры/позиции."
                            ),
                            Question(
                                id: UUID(),
                                text: "Разница между frame, bounds и center.",
                                answer: "frame описывает позицию и размер view относительно superview, bounds — область внутри самого view, center — координаты центра в системе superview."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое stack‑view и когда его использовать?",
                                answer: "UIStackView группирует элементы по оси (вертикали/горизонтали) и управляет их layout автоматически на основе distribution/alignment."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как работает UITableView и для чего он нужен?",
                                answer: "UITableView — компонент списка с переиспользуемыми ячейками (reuse identifiers), оптимизирует память и скорость отрисовки длинных списков."
                            ),
                            Question(
                                id: UUID(),
                                text: "Разница между UITableView и UICollectionView?",
                                answer: "UITableView — списки (одномерные), UICollectionView — гибкие layout'ы (сеточная/кастомная)."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое reuseIdentifier и зачем он нужен?",
                                answer: "Идентификатор переиспользуемой ячейки для оптимизации таблиц/коллекций и уменьшения затрат на создание view."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое diffable data source?",
                                answer: "Современный способ обновления UITableView/UICollectionView: безопасное, анимированное применение изменений данных."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как обрабатывать события нажатия в UIKit?",
                                answer: "Обычно через target‑action (button.addTarget(...)) или через делегаты/closures для кастомных view."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое UIView.animate?",
                                answer: "API для анимаций изменения свойств view с плавным переходом."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как добавить жест распознавания (gesture) к элементу?",
                                answer: "Создать UIGestureRecognizer (tap/swipe/pan) и добавить к view методом addGestureRecognizer(_:)."
                            ),
                            Question(
                                id: UUID(),
                                text: "Когда использовать Storyboard, а когда програмно?",
                                answer: "Storyboard удобен для визуального быстрого макета; програмно даёт больше контроля и гибкости. Часто крупные проекты избегают монолитных storyboard'ов."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое NIB/XIB и как его использовать?",
                                answer: "Файлы с интерфейсом, которые загружаются отдельно (например, для кастомных ячеек): удобны для переиспользуемых элементов UI."
                            ),
                            Question(
                                id: UUID(),
                                text: "Зачем нужен NavigationController?",
                                answer: "Управляет стеком экранов (push/pop), обеспечивает навигацию назад."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что делает TabBarController?",
                                answer: "Обеспечивает управление вкладками/разделами приложения."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как работает UIResponder Chain?",
                                answer: "UIResponder — базовый класс для объектов, которые могут участвовать в обработке событий. \n Он позволяет: •  получать события• \n передавать их дальше по responder chain • \n обрабатывать touch, press, motion события.\n Все UIView, UIViewController, UIApplication и UIWindow наследуются от UIResponder.."
                            ),
                            Question(
                                id: UUID(),
                                text: "Объясните difference between contentHugging и contentCompressionResistance.",
                                answer: "Параметры Auto Layout, которые определяют, как view сопротивляется растяжению или сжатию."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое SceneDelegate и как он взаимодействует с AppDelegate?",
                                answer: "SceneDelegate управляет жизненным циклом отдельных UI сцен (например, в iPadOS/мультиоконность), AppDelegate — жизненным циклом приложения в целом."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое layoutSubviews()?",
                                answer: "Метод UIView, вызывается при изменении размеров view, позволяет вручную перерасположить subviews."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое SwiftUI?",
                                answer: "Фреймворк от Apple для декларативной разработки UI, автоматически синхронизирует состояние и представление UI."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как SwiftUI отличается от UIKit?",
                                answer: "SwiftUI декларативный: описываешь что UI должен показывать, система сама обновляет UI при изменении данных; UIKit императивный: программист вручную управляет UI шаг за шагом."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое @State и когда его использовать?",
                                answer: "Обёртка свойства, управляющая локальным состоянием view и триггером обновления UI на его изменение."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое @Binding?",
                                answer: "Связь между состоянием родителя и дочернего view для двустороннего изменения данных."
                            ),
                            Question(
                                id: UUID(),
                                text: "Объясните @ObservedObject vs @StateObject.",
                                answer: "StateObject инициализируется и управляется в этом view; ObservedObject получает объект извне и отслеживает изменения."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое VStack, HStack, ZStack?",
                                answer: "Контейнеры SwiftUI для вертикального, горизонтального и наложенного расположения элементов."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как создать список (List) в SwiftUI?",
                                answer: "Использовать List с данными и closure, возвращающей row view."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что делает NavigationView (или NavigationStack)?",
                                answer: "Обеспечивает навигационный стек экранов в SwiftUI."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как SwiftUI обновляет UI при изменении данных?",
                                answer: "Через property wrappers и систему реактивного рендеринга: при изменении State/ObservedObject SwiftUI пересчитывает body и обновляет UI."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как обрабатывать события (клик на кнопку) в SwiftUI?",
                                answer: "Через closure внутри компонента, например Button(\"Tap\") { action() }."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое ViewModifier?",
                                answer: "Компонент, который позволяет повторно применять модификации (например, стиль/отступы) к view."
                            ),
                            Question(
                                id: UUID(),
                                text: "Разница между .sheet и .fullScreenCover.",
                                answer: "Оба презентуют экран модально, но .fullScreenCover занимает весь экран, .sheet — частично по UX."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое .environmentObject?",
                                answer: "Глобальный источник данных, доступный многим view в иерархии."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как управлять темной темой в SwiftUI?",
                                answer: "SwiftUI автоматически поддерживает Dark Mode, можно использовать .preferredColorScheme или подписываться на изменения."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое GeometryReader?",
                                answer: "Компонент, предоставляющий доступ к размеру/позиции view для кастомного layout'а."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как оптимизировать большие списки в SwiftUI?",
                                answer: "Использовать List, LazyVStack/LazyHStack и минимизировать сложные view внутри row."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как интегрировать UIKit view в SwiftUI?",
                                answer: "Через UIViewRepresentable/UIViewControllerRepresentable."
                            ),
                            Question(
                                id: UUID(),
                                text: "Объясните цикл обновления SwiftUI views.",
                                answer: "SwiftUI пересчитывает body view при изменении состояния, обновляя только изменившиеся части."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как обрабатывать жесты в SwiftUI?",
                                answer: "Через .onTapGesture, .gesture(...) и прочие модификаторы."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как тестировать SwiftUI views?",
                                answer: "Через XCTest, создавать UI тесты для взаимодействий и проверку состояния."
                            ),
                            Question(
                                id: UUID(),
                                text: "Опиши полный путь нажатия на экран в iOS",
                                answer: "Touch → UIEvent → UIWindow → hitTest → First Responder → обработка через gesture / control / responder chain."
                            ),
                            Question(
                                id: UUID(),
                                text: "Чем отличается обработка touch-событий в UIKit и SwiftUI?",
                                answer: "UIKit использует responder chain и target-action, SwiftUI — gesture system и closures. SwiftUI не имеет First Responder в классическом смысле."
                            ),
                            Question(
                                id: UUID(),
                                text: "В чём разница между hitTest(_:with:) и point(inside:with:)?",
                                answer: "point(inside:) проверяет, попадает ли точка внутрь view,\nhitTest выбирает конкретный view для обработки события."
                            ),
                            Question(
                                id: UUID(),
                                text: "Когда стоит переопределять point(inside:), а не hitTest?",
                                answer: "Когда нужно изменить область нажатия, не ломая иерархию view и responder chain."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что произойдёт, если hitTest всегда возвращает self?",
                                answer: "View перехватит все события, subviews и жесты могут перестать работать."
                            ),
                            Question(
                                id: UUID(),
                                text: "Кто становится First Responder при касании экрана?",
                                answer: "View, возвращённый hitTest. Это стартовая точка responder chain."
                            ),
                            Question(
                                id: UUID(),
                                text: "Является ли First Responder тем, кто обязательно обработает событие?",
                                answer: "Нет. Он лишь первая точка обработки, событие может пойти дальше по responder chain."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что произойдёт, если не вызвать super.touchesBegan()?",
                                answer: "Событие не будет передано дальше по responder chain."
                            ),
                            Question(
                                id: UUID(),
                                text: "Где в пайплайне находятся gesture recognizers?",
                                answer: "Они обрабатывают события после hitTest, но до responder chain."
                            ),
                            Question(
                                id: UUID(),
                                text: "Может ли gesture отменить обработку touches?",
                                answer: "Да, через cancelsTouchesInView."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как UIButton обрабатывает нажатие?",
                                answer: "Он сам обрабатывает touches и вызывает sendActions(for:), минуя responder chain для touches, но используя её для поиска target."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что происходит, если у UIControl target = nil?",
                                answer: "UIKit ищет target по responder chain."
                            ),
                            Question(
                                id: UUID(),
                                text: "Есть ли First Responder в SwiftUI?",
                                answer: "Нет. SwiftUI использует gesture system и focus state вместо responder chain."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как SwiftUI определяет, куда пришёл тап?",
                                answer: "Через UIHostingView.hitTest, после чего событие сопоставляется с gesture graph SwiftUI."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что в SwiftUI является аналогом point(inside:)?",
                                answer: "contentShape."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как SwiftUI решает конфликт между несколькими жестами?",
                                answer: "Через приоритеты: highPriorityGesture, simultaneousGesture, порядок в иерархии."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему .onTapGesture не всегда срабатывает?",
                                answer: "Потому что:\n• нет contentShape,\n• жест перехвачен родителем,\n• есть gesture с более высоким приоритетом."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как реализован Button в SwiftUI концептуально?",
                                answer: "Это декларация жеста + action closure, которая изменяет состояние и инициирует обновление UI."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему Button в SwiftUI не использует target-action?",
                                answer: "Потому что SwiftUI работает с closures и state-driven обновлениями, а не с responder chain."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что происходит с touch-событием, если ни один handler его не обработал?",
                                answer: "UIKit либо игнорирует событие, либо применяет стандартное поведение (scroll, highlight). В SwiftUI событие просто не приводит к действию."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему SwiftUI сложнее дебажить, чем UIKit?",
                                answer: "Потому что обработка событий и обновления UI скрыты внутри runtime и выполняются асинхронно через диффинг."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему в SwiftUI нельзя «поймать» touch напрямую?",
                                answer: "Потому что SwiftUI не экспонирует UIEvent и работает на уровне декларативных жестов."
                            ),
                            Question(
                                id: UUID(),
                                text: "Можно ли в SwiftUI реализовать responder chain?",
                                answer: "Нет напрямую. Можно только управлять приоритетом жестов и фокусом."
                            ),
                            Question(
                                id: UUID(),
                                text: "Можно ли в SwiftUI расширить область нажатия без изменения layout?",
                                answer: "Да, с помощью contentShape."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое обработка событий (Event Handling) в UIKit?",
                                answer: "Обработка событий — это механизм, с помощью которого iOS доставляет пользовательские и системные события (касания, жесты, движения, нажатия кнопок) объектам приложения. UIKit получает событие от системы, упаковывает его в UIEvent и передаёт по responder chain для обработки."
                            ),
                            Question(
                                id: UUID(),
                                text: "Какие типы событий существуют в UIKit?",
                                answer: "• Touch events — касания экрана (touchesBegan/Moved/Ended/Cancelled)\n• Motion events — события движения (например, shake)\n• Remote control events — управление с наушников, CarPlay и т.п.\n• Press events — нажатия клавиш (iPad, Apple TV, клавиатура)"
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое UIResponder и зачем он нужен?",
                                answer: "UIResponder — базовый класс для объектов, которые могут участвовать в обработке событий.\nОн позволяет:\n• получать события\n• передавать их дальше по responder chain\n• обрабатывать touch, press, motion события\n\nВсе UIView, UIViewController, UIApplication и UIWindow наследуются от UIResponder."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое responder chain?",
                                answer: "Responder chain — это цепочка объектов, по которой событие передаётся, пока не будет обработано.\n\nТипичный порядок:\n1. UIView\n2. UIViewController\n3. UIWindow\n4. UIApplication\n5. AppDelegate / SceneDelegate\n\nЕсли текущий responder не обработал событие, оно передаётся следующему."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как система определяет, какой UIView получит touch?",
                                answer: "UIKit использует hit-testing:\n1. Вызывается hitTest(_:with:)\n2. Проверяется point(inside:with:)\n3. Система рекурсивно проходит по иерархии view (сверху вниз)\n4. Возвращается самая глубокая view, подходящая под условия"
                            ),
                            Question(
                                id: UUID(),
                                text: "Когда вызываются методы touchesBegan / touchesMoved / touchesEnded?",
                                answer: "• touchesBegan — пользователь коснулся экрана\n• touchesMoved — палец двигается\n• touchesEnded — палец убран\n• touchesCancelled — событие отменено (например, входящий звонок)"
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему touches методы могут не вызываться?",
                                answer: "• isUserInteractionEnabled = false\n• alpha < 0.01\n• isHidden = true\n• Поверх view есть другая view\n• Используется UIGestureRecognizer, который перехватывает событие"
                            ),
                            Question(
                                id: UUID(),
                                text: "Как работают UIGestureRecognizer и чем они лучше touches?",
                                answer: "UIGestureRecognizer — высокоуровневый механизм для распознавания жестов.\n\nПлюсы:\n• меньше кода\n• автоматическая обработка состояний\n• можно комбинировать жесты\n• не нужно вручную отслеживать touch lifecycle"
                            ),
                            Question(
                                id: UUID(),
                                text: "Основные состояния UIGestureRecognizer",
                                answer: "• .possible\n• .began\n• .changed\n• .ended\n• .cancelled\n• .failed"
                            ),
                            Question(
                                id: UUID(),
                                text: "Может ли view иметь несколько gesture recognizers?",
                                answer: "Да, одна view может иметь несколько UIGestureRecognizer.\n\nМожно управлять их взаимодействием через:\n• require(toFail:)\n• gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)"
                            ),
                            Question(
                                id: UUID(),
                                text: "Что произойдёт, если одновременно есть UIButton и UITapGestureRecognizer?",
                                answer: "По умолчанию UIButton перехватывает touch.\nНо поведение можно изменить:\n• отключить isUserInteractionEnabled\n• использовать cancelsTouchesInView\n• управлять приоритетами жестов"
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое cancelsTouchesInView?",
                                answer: "Свойство UIGestureRecognizer, которое определяет, будут ли touch-события отменены у view после распознавания жеста.\nПо умолчанию — true."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как передать событие дальше по responder chain вручную?",
                                answer: "Можно вызвать next?.touchesBegan(...), но это плохая практика.\nПравильнее:\n• использовать делегаты\n• closures\n• NotificationCenter\n• Combine"
                            ),
                            Question(
                                id: UUID(),
                                text: "В каких случаях лучше переопределять hitTest?",
                                answer: "• расширение зоны нажатия\n• прокидывание touch сквозь view\n• кастомные контейнеры\n• сложные UI с перекрытиями"
                            ),
                            Question(
                                id: UUID(),
                                text: "В чём разница между UIView и CALayer?",
                                answer: "UIView отвечает за:\n• обработку событий\n• иерархию view\n• layout и autolayout\n\nCALayer отвечает за:\n• отрисовку\n• анимации\n• визуальные свойства (shadow, cornerRadius и т.д.)\n\nКаждая UIView имеет свой CALayer."
                            ),
                            Question(
                                id: UUID(),
                                text: "Жизненный цикл UIViewController",
                                answer: "1. init\n2. loadView\n3. viewDidLoad\n4. viewWillAppear\n5. viewDidAppear\n6. viewWillDisappear\n7. viewDidDisappear\n8. deinit"
                            ),
                            Question(
                                id: UUID(),
                                text: "Когда вызывается loadView и зачем его переопределять?",
                                answer: "loadView вызывается, когда view загружается в память.\nПереопределяют его для создания view без storyboard/xib.\nВажно вызвать self.view = ..., иначе приложение упадёт."
                            ),
                            Question(
                                id: UUID(),
                                text: "Разница между frame и bounds",
                                answer: "• frame — положение и размер view в системе координат родителя\n• bounds — внутренняя система координат самой view\n\nbounds.origin обычно (0,0), но может быть изменён (например, для scroll)."
                            ),
                            Question(
                                id: UUID(),
                                text: "Auto Layout vs manual layout",
                                answer: "• Auto Layout — декларативный, гибкий, поддерживает адаптивные интерфейсы\n• Manual layout (layoutSubviews) — быстрее, но сложнее поддерживать\n\nMiddle должен понимать оба подхода."
                            ),
                            Question(
                                id: UUID(),
                                text: "Когда вызывается layoutSubviews?",
                                answer: "• при изменении frame\n• при изменении constraints\n• после setNeedsLayout / layoutIfNeeded"
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое Intrinsic Content Size?",
                                answer: "Это «естественный» размер view, который она может определить сама\n(например, UILabel, UIButton)."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое UIStackView и как он работает?",
                                answer: "UIStackView не рисует контент, а управляет layout вложенных view\nчерез Auto Layout."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое RunLoop и зачем он нужен UIKit?",
                                answer: "RunLoop обрабатывает:\n• события\n• таймеры\n• отрисовку UI\n\nUIKit работает только на main thread, который крутит RunLoop."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как UIKit работает с многопоточностью?",
                                answer: "Любые изменения UI — только на главном потоке.\nФоновая работа — через GCD / OperationQueue."
                            ),
                            Question(
                                id: UUID(),
                                text: "Основная идея SwiftUI",
                                answer: "SwiftUI — декларативный UI-фреймворк, где интерфейс — функция от состояния."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое View в SwiftUI?",
                                answer: "View — это value type (struct), который описывает UI.\nОн не хранит состояние напрямую."
                            ),
                            Question(
                                id: UUID(),
                                text: "Чем SwiftUI отличается от UIKit концептуально?",
                                answer: "• UIKit — imperative\n• SwiftUI — declarative\n• UIKit — mutable views\n• SwiftUI — immutable view description"
                            ),
                            Question(
                                id: UUID(),
                                text: "Разница между @State, @Binding и @ObservedObject",
                                answer: "• @State — владеет состоянием\n• @Binding — ссылка на состояние извне\n• @ObservedObject — подписка на внешний observable-объект"
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое @StateObject и зачем он нужен?",
                                answer: "@StateObject используется для создания и владения observable-объектом,\nчтобы он не пересоздавался при перерисовках."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое @Environment и @EnvironmentObject?",
                                answer: "• @Environment — системные значения (theme, locale)\n• @EnvironmentObject — shared state между экранами"
                            ),
                            Question(
                                id: UUID(),
                                text: "Как работает body и когда он вызывается?",
                                answer: "body пересчитывается при любом изменении зависимого состояния.\nSwiftUI сам решает, какие части UI реально обновить."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как работает navigation в SwiftUI?",
                                answer: "Через NavigationStack + navigationDestination,\nуправляется состоянием."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как встроить SwiftUI в UIKit?",
                                answer: "Через UIHostingController."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как встроить UIKit в SwiftUI?",
                                answer: "Через UIViewRepresentable / UIViewControllerRepresentable."
                            ),
                            Question(
                                id: UUID(),
                                text: "Когда лучше UIKit, а когда SwiftUI?",
                                answer: "• UIKit — сложные кастомные UI, legacy\n• SwiftUI — новые экраны, быстрый development"
                            ),
                            Question(
                                id: UUID(),
                                text: "Основные проблемы SwiftUI",
                                answer: "• сложный debugging\n• неожиданные перерисовки\n• меньше гибкости в сложных layout"
                            )
                        ]
                    ),
            TopicQuestion(
                        id: UUID(),
                        name: "Networking & API",
                        questions: [
                            Question(
                                id: UUID(),
                                text: "Что такое REST и REST‑API?",
                                answer: "REST (Representational State Transfer) — архитектурный стиль для сетевого взаимодействия, основанный на HTTP‑методах (GET, POST, PUT, DELETE и др.). REST‑API — интерфейс, реализующий REST, где ресурсы идентифицируются URL, а операции выполняются через стандартные HTTP‑методы."
                            ),
                            Question(
                                id: UUID(),
                                text: "Какие HTTP‑методы используются в REST и для чего?",
                                answer: "• GET: чтение ресурса;\n• POST: создание ресурса;\n• PUT: полное обновление ресурса;\n• PATCH: частичное обновление;\n• DELETE: удаление ресурса.\nЭти методы помогают клиенту сообщить серверу, какое действие нужно выполнить."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое idempotency?",
                                answer: "Идемпотентный запрос — запрос, который при повторном выполнении даёт одинаковый результат.\nПримеры:\n• GET, PUT, DELETE — идемпотентные\n• POST — обычно нет"
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое HTTP status codes?",
                                answer: "Коды состояния ответа сервера:\n• 2xx — успех (200, 201)\n• 3xx — редиректы\n• 4xx — ошибка клиента (400, 401, 403, 404)\n• 5xx — ошибка сервера (500, 503)"
                            ),
                            Question(
                                id: UUID(),
                                text: "Разница между 401 и 403",
                                answer: "• 401 Unauthorized — пользователь не аутентифицирован\n• 403 Forbidden — доступ запрещён, даже если пользователь аутентифицирован"
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое JSON и почему он популярен в API?",
                                answer: "JSON (JavaScript Object Notation) — текстовый формат обмена данными, легко читаемый как человеком, так и машиной, поддерживается большинством библиотек, удобен для сериализации/десериализации."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как сделать сетевой запрос через URLSession?",
                                answer: "URLSession — основной API Apple для сетевых вызовов. Простейший запрос:\nlet url = URL(string: \"https://api.example.com/data\")!\nURLSession.shared.dataTask(with: url) { data, response, error in\n    guard let data = data else { return }\n    // обработать data\n}.resume()\n\nОн асинхронен, работает в фоне и возвращает данные в completion‑handler."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое URLSession и какие типы задач в нём есть?",
                                answer: "URLSession — основной API для сетевых запросов в iOS.\n\nТипы задач:\n• dataTask — работа с JSON / данными\n• downloadTask — загрузка файлов\n• uploadTask — отправка файлов"
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое URLRequest и когда он нужен?",
                                answer: "URLRequest — более мощный объект, чем просто URL. Он содержит метод HTTP (GET/POST и др.), заголовки, тело запроса и другие параметры, которые нужны для кастомного запроса."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое URLSessionConfiguration?",
                                answer: "Объект, описывающий конфигурацию сессии (кеш, таймауты, политика запросов). Например, можно создать URLSession с отдельным кешем, cookie или другими настройками."
                            ),
                            Question(
                                id: UUID(),
                                text: "Разница между URLSessionConfiguration.default и ephemeral",
                                answer: "• default — сохраняет cookies, cache, credentials\n• ephemeral — не сохраняет данные на диск (приватные сессии)"
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое HTTP headers и зачем они нужны?",
                                answer: "Headers передают метаданные:\n• авторизация (Authorization)\n• формат данных (Content-Type, Accept)\n• кеширование\n• локаль, язык"
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое Content-Type и Accept?",
                                answer: "• Content-Type — формат отправляемых данных\n• Accept — ожидаемый формат ответа"
                            ),
                            Question(
                                id: UUID(),
                                text: "Как обрабатывать сетевые ошибки?",
                                answer: "Проверка на:\n• error из completion‑handler;\n• проверка HTTP‑статуса ((response as? HTTPURLResponse)?.statusCode);\n• ошибки парсинга JSON;\nОбработка должна быть детализирована (таймаут, нет соединения, 400/500 ошибки и др.) для UX."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что делать, если JSON не совпадает с моделью?",
                                answer: "• использовать CodingKeys\n• делать optional поля\n• кастомный init(from:)\n• использовать keyDecodingStrategy"
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое retry и когда его использовать?",
                                answer: "Retry — повтор запроса при ошибке.\nИспользуется:\n• при временных сетевых ошибках\n• при 503, timeout\n\nНе стоит использовать для 4xx."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как использовать Codable для JSON?",
                                answer: "Типы Encodable/Decodable автоматически кодируют/декодируют JSON:\n\nstruct User: Codable {\n    let id: Int\n    let name: String\n}\n\nlet decoder = JSONDecoder()\nlet user = try decoder.decode(User.self, from: data)\n\nОн упрощает парсинг, избегая ручного разбора."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое JSONDecoder.KeyDecodingStrategy?",
                                answer: "Опция декодера, позволяющая автоматическую трансформацию имен ключей (например, snake_case → camelCase) без ручного указания CodingKeys."
                            ),
                            Question(
                                id: UUID(),
                                text: "Чем отличается JSONSerialization от Codable?",
                                answer: "JSONSerialization — низкоуровневый разбор JSON в Any (словарь/массив), требует кастов и ошибок на рантайме; Codable — типобезопасный, структурированный парсинг, проще поддерживается."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как обрабатывать ошибки декодирования?",
                                answer: "Тщательно ловить DecodingError варианты (typeMismatch, keyNotFound), выводить адекватные сообщения и fallback‑значения; возможно использовать try? или кастомные init(from:)."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое HTTPURLResponse?",
                                answer: "Подкласс URLResponse, который содержит HTTP‑информацию (код статуса, заголовки), нужен для анализа результата запроса."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое REST API authentication?",
                                answer: "Механизмы аутентификации: токены (JWT, OAuth), basic auth, API‑ключи. Нужно безопасно передавать Authorization заголовок и хранить ключи в безопасном месте (Keychain)."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое authentication и authorization?",
                                answer: "• Authentication — кто пользователь\n• Authorization — что ему разрешено"
                            ),
                            Question(
                                id: UUID(),
                                text: "Основные способы авторизации в API",
                                answer: "• API Key\n• Basic Auth\n• OAuth 2.0\n• JWT / Bearer Token"
                            ),
                            Question(
                                id: UUID(),
                                text: "Где безопасно хранить токены?",
                                answer: "В Keychain.\nНельзя хранить токены в UserDefaults."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как обновлять access token (refresh token)?",
                                answer: "1. Сервер возвращает 401\n2. Клиент отправляет refresh token\n3. Получает новый access token\n4. Повторяет оригинальный запрос\n\nВажно избегать race condition."
                            ),
                            Question(
                                id: UUID(),
                                text: "В чём преимущества Alamofire перед URLSession?",
                                answer: "Alamofire предоставляет более удобный API, chaining запросов, встроенный менеджер сессий, кодирование параметров. Недостаток — внешняя зависимость и немного больший размер проекта."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое REST API versioning?",
                                answer: "Версионирование API (/v1/, /v2/ и т. д.) позволяет изменять контракт сервера без ломания старых клиентов."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как обрабатывать пагинацию?",
                                answer: "Сервер возвращает порции данных с параметрами (page, limit, nextCursor). Клиент обновляет UI по мере скролла и вызывает следующие страницы."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое query parameters и где их задавать?",
                                answer: "Параметры в URL после ?, например ?page=1&limit=20. Их можно формировать через URLComponents. Пример:\n\nvar components = URLComponents(string: \"https://api.example.com/items\")!\ncomponents.queryItems = [URLQueryItem(name: \"page\", value: \"1\")]\nlet url = components.url!"
                            ),
                            Question(
                                id: UUID(),
                                text: "Как обрабатывать разные форматы данных (например, CSV)?",
                                answer: "JSON — стандарт, но клиенты могут парсить любые форматы: Data → String → парсер CSV, XMLParser и др."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как хранить и управлять ответами (кеш)?",
                                answer: "Можно использовать:\n• URLCache для кеширования ответов;\n• собственный кеш (Realm, Core Data) для сложных случаев;\n• хранить ETag/Last‑Modified для условного GET."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое URLSessionDataTask?",
                                answer: "Тип задачи сети, получающий данные как Data. dataTask(with:) возвращает объект, у которого нужно вызвать resume() для начала."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как отменить сетевой запрос?",
                                answer: "Сохраняете ссылку на URLSessionTask и вызываете task.cancel() при необходимости (например, пользователь отменил загрузку)."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое async/await с сетью?",
                                answer: "Современный Swift API для асинхронных вызовов:\nlet (data, response) = try await URLSession.shared.data(from: url)\nОн делает код чище, избегая callback‑hell."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое cookie и где они используются?",
                                answer: "HTTP‑cookie — механизм хранения состояния между запросами. В iOS можно управлять ими через HTTPCookieStorage."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое TLS/SSL?",
                                answer: "Протоколы для безопасного HTTPS‑соединения (шифрование данных). Клиент должен использовать HTTPS и избегать необезопашенных HTTP."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое certificate pinning?",
                                answer: "Практика привязки конкретного сертификата/CA для защиты от MITM‑атак. Клиент проверяет только допустимые сертификаты."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое MIME‑type и зачем он нужен?",
                                answer: "Тип содержимого (Content‑Type), например application/json, сообщает серверу/клиенту, как интерпретировать тело ответа."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как проводить сетевую отладку в iOS?",
                                answer: "Использовать:\n• инструменты типа Charles Proxy / Proxyman;\n• симулятор + Network Link Conditioner;\n• print/логирование запросов/ответов;\n• Xcode Network Debugger."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое HTTP/2 и преимущества?",
                                answer: "Современный HTTP с мультиплексированием запросов, header compression, улучшенной производительностью."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое WebSocket и когда использовать?",
                                answer: "WebSocket — двусторонний протокол связи для real‑time (чат, Live updates). В iOS его можно использовать через URLSessionWebSocketTask."
                            ),
                            Question(
                                id: UUID(),
                                text: "Пример простого WebSocket‑клиента в Swift?",
                                answer: "Схематично:\n\nlet task = URLSession.shared.webSocketTask(with: URL(string: \"wss://echo.websocket.org\")!)\ntask.resume()\n\ntask.receive { result in\n    switch result {\n    case .success(let msg): print(msg)\n    case .failure(let err): print(err)\n    }\n}\n\nВажно вызывать receive каждый раз после обработки сообщения."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как тестировать networking слой?",
                                answer: "• мокать URLSession\n• использовать URLProtocol\n• писать unit-тесты для API клиентов"
                            ),
                            Question(
                                id: UUID(),
                                text: "Какой должна быть архитектура networking слоя?",
                                answer: "• разделение ответственности\n• абстракция над URLSession\n• возможность тестирования\n• единый error handling"
                            )
                        ]
                    ),
            TopicQuestion(
                        id: UUID(),
                        name: "Асинхронность, многопоточность и Concurrency",
                        questions: [
                            Question(
                                id: UUID(),
                                text: "Что такое асинхронность и как она отличается от многопоточности?",
                                answer: "Асинхронность — это модель выполнения задач так, чтобы не блокировать текущий поток (например, главную очередь), позволяя другим операциям выполняться параллельно (например, сетевой запрос).\nМногопоточность — это наличие нескольких потоков выполнения внутри процесса для параллельной обработки. Асинхронность часто достигается с помощью многопоточности, но это не одно и то же: асинхронный код может выполняться в рамках одного потока с использованием неблокирующих операций, а многопоточность — это параллельное выполнение на уровне операционной системы."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое Grand Central Dispatch (GCD)?",
                                answer: "GCD — это фреймворк Apple для управления асинхронным кодом и очередями задач (queues). Он автоматизирует распределение задач по доступным потокам и даёт API для создания serial и concurrent очередей."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое DispatchQueue и чем она отличается от потока?",
                                answer: "DispatchQueue — логическая очередь задач. Очередь не является потоком; GCD решает, на каких потоках выполнять задачи."
                            ),
                            Question(
                                id: UUID(),
                                text: "Чем отличаются последовательные (serial) и параллельные (concurrent) очереди?",
                                answer: "• Serial queue: выполняет задачи в порядке очереди, одна за другой.\n• Concurrent queue: позволяет нескольким задачам выполняться одновременно, порядок запуска сохраняется, но порядок завершения — нет."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое main queue и main thread?",
                                answer: "Main queue — это серийная очередь, привязанная к основному (UI) потоку iOS. Обновления UI должны выполняться на главной очереди, потому что UIKit не является thread‑safe и все визуальные изменения должны происходить в одном потоке."
                            ),
                            Question(
                                id: UUID(),
                                text: "В чём разница между sync и async вызовами в GCD?",
                                answer: "• sync: блокирует текущий поток до завершения задачи.\n• async: запускает задачу и сразу возвращает управление (не блокирует текущий поток).\n\nПример:\nDispatchQueue.global().async {\n    // non‑blocking\n}\nDispatchQueue.global().sync {\n    // blocking\n}"
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое QoS (Quality of Service)?",
                                answer: "QoS определяет приоритет задачи: насколько быстро система должна её выполнить. Уровни включают .userInteractive, .userInitiated, .default, .utility, .background. Подбор QoS помогает оптимизировать отзывчивость и энергопотребление."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как использовать DispatchGroup и зачем он нужен?",
                                answer: "DispatchGroup позволяет отслеживать группу асинхронных задач и выполнить код после того, как все они завершатся. Применяется для ожидания завершения нескольких параллельных задач.\n\nПример:\nlet group = DispatchGroup()\n\ngroup.enter()\nDispatchQueue.global().async {\n    // работа\n    group.leave()\n}\n\ngroup.notify(queue: .main) {\n    print(\"Все задачи завершены\")\n}"
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое DispatchSemaphore?",
                                answer: "Семафор ограничивает количество одновременно выполняющихся задач или контролирует доступ к ресурсу."
                            ),
                            Question(
                                id: UUID(),
                                text: "Разница между DispatchGroup и Semaphore",
                                answer: "• DispatchGroup — ожидание завершения задач\n• Semaphore — контроль доступа и количества"
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое DispatchWorkItem?",
                                answer: "DispatchWorkItem — это объект, обёртывающий задачу GCD. Он позволяет отменять задачу или добавлять дополнительные действия до/после выполнения."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое DispatchSource?",
                                answer: "Наблюдение за событиями: таймеры, файловые дескрипторы, сигналы."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое barrier и когда его использовать?",
                                answer: "В concurrent queue блок выполняется эксклюзивно, после завершения всех предыдущих задач; полезно для single-writer."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое Race condition и как его избежать?",
                                answer: "Race condition — это состояние, когда несколько потоков одновременно обращаются к разделяемому ресурсу без синхронизации, что приводит к непредсказуемым результатам. Решения: использовать serial queues, DispatchBarrier, NSLock, actor и др."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое Deadlock?",
                                answer: "Deadlock — ситуация, когда потоки блокируют друг друга, ожидая освобождения ресурсов, что приводит к взаимной блокировке. Например, вызов sync на главной очереди из главного потока может вызвать deadlock."
                            ),
                            Question(
                                id: UUID(),
                                text: "Когда sync приводит к deadlock?",
                                answer: "Когда вызывают sync на очереди, где уже исполняются (например, DispatchQueue.main.sync на main)."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое livelock?",
                                answer: "Потоки активны, но прогресс не происходит."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое starvation?",
                                answer: "Некоторые задачи не получают CPU."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое priority inversion?",
                                answer: "Низкоприоритетная задача удерживает ресурс, нужный высокоприоритетной."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему нельзя выполнять долгие операции на main queue?",
                                answer: "Это блокирует UI run loop → лаги и фризы."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое Operation и OperationQueue?",
                                answer: "Operation — объектная обёртка над задачей, которую можно запускать асинхронно. OperationQueue управляет очередью операций, поддерживает зависимости, отмену и приоритеты. Это более структурированный способ по сравнению с GCD."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как сделать зависимость операций (Operation) друг от друга?",
                                answer: "Можно вызвать addDependency(_:):\n\nlet op1 = BlockOperation { … }\nlet op2 = BlockOperation { … }\nop2.addDependency(op1)\nqueue.addOperations([op1, op2], waitUntilFinished: false)\n\nЭто гарантирует, что op2 начнёт только после завершения op1."
                            ),
                            Question(
                                id: UUID(),
                                text: "Когда стоит использовать OperationQueue вместо GCD?",
                                answer: "Если нужны зависимости между задачами, отмена задач, отслеживание прогресса, приоритеты — OperationQueue даёт более гибкое управление по сравнению с GCD."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как отменить Operation?",
                                answer: "Через cancel(); операция должна проверять isCancelled."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое BlockOperation?",
                                answer: "Operation, которая может содержать несколько блоков, выполняющихся параллельно."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как ограничить параллелизм в OperationQueue?",
                                answer: "queue.maxConcurrentOperationCount."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое Swift Concurrency (async/await)?",
                                answer: "Swift Concurrency — современная модель асинхронной обработки в Swift (введена в Swift 5.5), позволяющая писать асинхронный код в последовательном стиле с помощью async/await. Это делает код более читабельным и меньше подверженным callback‑hell."
                            ),
                            Question(
                                id: UUID(),
                                text: "Пример async/await для сетевого запроса:",
                                answer: "func fetchUsers() async throws -> [User] {\n    let (data, _) = try await URLSession.shared.data(from: URL(string: \"https://api.example.com/users\")!)\n    return try JSONDecoder().decode([User].self, from: data)\n}\n\nTask {\n    do {\n        let users = try await fetchUsers()\n        print(users)\n    } catch {\n        print(\"Ошибка: \\(error)\")\n    }\n}\n\nЭто демонстрирует современный способ выполнения асинхронных операций."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое Task в Swift Concurrency?",
                                answer: "Task — единица асинхронной работы. С помощью Task { … } можно запускать асинхронный код из синхронного контекста или из UI."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что делает Task.detached?",
                                answer: "Создаёт таск вне текущего actor/priority context."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как отменить Task?",
                                answer: "Сохранив ссылку на Task и вызвав cancel():\n\nlet task = Task { … }\ntask.cancel()\nКод внутри должен периодически проверять Task.isCancelled"
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое structured concurrency?",
                                answer: "Дочерние задачи привязаны к родительской. Если родитель отменён — отменяются и дочерние задачи."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое unstructured concurrency?",
                                answer: "Detached таски без контроля родителя; нужно вручную отслеживать их."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое async let и как он работает?",
                                answer: "async let позволяет запускаеть несколько асинхронных операций параллельно в пределах одного контекста, а затем ожидать их завершения:\n\nasync let a = apiCall1()\nasync let b = apiCall2()\nlet result1 = await a\nlet result2 = await b\n\nЭто позволяет запускать задачи параллельно и потом дожидаться всех результатов."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое TaskGroup?",
                                answer: "TaskGroup позволяет динамически добавлять задачи и ждать, пока все они завершатся. Это полезно, когда число задач неизвестно заранее."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое continuation?",
                                answer: "Мост между callback-style API и async через withCheckedContinuation."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему await не блокирует поток?",
                                answer: "await не блокирует поток, потому что он приостанавливает функцию, а не поток. Когда выполнение доходит до await, runtime: \n 1.Cохраняет состояние async-функции (локальные переменные + точку продолжения) в объекте в куче \n 2.Убирает функцию из call stack потока \n 3.Возвращает поток event loop / thread pool для других задач. Когда async-операция завершается, runtime: •    берёт сохранённое состояние •  ставит продолжение в очередь  •  выполняет его на любом свободном потоке."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое actor в Swift Concurrency?",
                                answer: "actor — специализированный reference type, который обеспечивает безопасный доступ к состоянию из нескольких потоков, предотвращая data races."
                            ),
                            Question(
                                id: UUID(),
                                text: "Чем actor отличается от class?",
                                answer: "• class — не thread-safe\n• actor — автоматически защищает состояние от race condition"
                            ),
                            Question(
                                id: UUID(),
                                text: "Как работает сериализация вызовов actor?",
                                answer: "Executor ставит задачи в очередь, выполняя по одной."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое reentrancy в actor?",
                                answer: "Другие задачи могут попасть внутрь actor во время await."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему reentrancy опасна?",
                                answer: "Нарушает атомарность и инварианты состояния."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как избежать reentrancy bugs?",
                                answer: "Минимизировать await между read → write; фиксировать состояние заранее."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что делает @MainActor?",
                                answer: "@MainActor гарантирует выполнение кода на главном потоке. Используется для работы с UI."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое global actor?",
                                answer: "Actor с глобальным назначением, например MainActor."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое nonisolated?",
                                answer: "Позволяет вызвать метод actor без await."
                            ),
                            Question(
                                id: UUID(),
                                text: "Когда использовать nonisolated?",
                                answer: "Для статических функций, протокольных требований, чистых функций."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое AsyncSequence?",
                                answer: "Асинхронный поток значений, поддерживающий последовательное await."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое AsyncStream?",
                                answer: "Класс для реализации кастомного AsyncSequence."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое data race?",
                                answer: "Несинхронизированный конкурентный доступ к mutable state."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как поймать data race?",
                                answer: "Thread Sanitizer (TSan)."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое backpressure?",
                                answer: "Контроль скорости producer → consumer, чтобы не перегрузить систему."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое throttling и debouncing?",
                                answer: "Throttling — ограничение частоты событий; debouncing — сглаживание всплесков частых событий."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как тестировать async/await?",
                                answer: "XCTest async tests, dependency injection, mocks, fake schedulers."
                            ),
                            Question(
                                id: UUID(),
                                text: "Можно ли смешивать GCD и Swift Concurrency?",
                                answer: "Да, но нужно быть осторожным. Лучше постепенно переходить на Swift Concurrency."
                            ),
                            Question(
                                id: UUID(),
                                text: "Типичные ошибки Middle-разработчиков",
                                answer: "• UI не на main thread\n• deadlock\n• race condition\n• retain cycle в async задачах\n• избыточное использование GCD"
                            )
                        ]
                    ),
            TopicQuestion(
                        id: UUID(),
                        name: "Архитектуры и паттерны",
                        questions: [
                            Question(
                                id: UUID(),
                                text: "Что такое архитектура приложения и зачем она нужна?",
                                answer: "Архитектура определяет структуру приложения и распределение ответственности между компонентами. Она нужна для улучшения читаемости кода, тестируемости, масштабируемости и уменьшения связности. Без архитектуры код быстро превращается в Massive ViewController."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое MVC (Model-View-Controller)?",
                                answer: "MVC — архитектурный паттерн, разделяющий приложение на Model (данные и бизнес-логика), View (UI) и Controller (посредник между Model и View). В iOS Controller часто берёт на себя слишком много ответственности, что приводит к проблеме Massive ViewController."
                            ),

                            Question(
                                id: UUID(),
                                text: "В чём основная проблема MVC в iOS?",
                                answer: "Основная проблема — смешение UI-логики, бизнес-логики и навигации в UIViewController. Это усложняет тестирование, поддержку и рефакторинг кода."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое MVP (Model-View-Presenter)?",
                                answer: "MVP — архитектура, где View является пассивной и отвечает только за отображение, а Presenter содержит бизнес-логику и управляет обновлением View через протоколы. Это улучшает тестируемость по сравнению с MVC."
                            ),

                            Question(
                                id: UUID(),
                                text: "Чем MVP отличается от MVC?",
                                answer: "В MVC контроллер часто содержит и UI-, и бизнес-логику. В MVP Presenter берёт на себя бизнес-логику, а View становится пассивной, что улучшает разделение ответственности."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое MVVM (Model-View-ViewModel)?",
                                answer: "MVVM — архитектура, где ViewModel преобразует данные Model в состояние, удобное для отображения. View подписывается на изменения ViewModel и автоматически обновляет UI."
                            ),

                            Question(
                                id: UUID(),
                                text: "Почему MVVM хорошо подходит для SwiftUI?",
                                answer: "SwiftUI использует декларативный подход и реактивное обновление интерфейса. MVVM естественно сочетается с этим, так как View автоматически обновляется при изменении состояния ViewModel."
                            ),

                            Question(
                                id: UUID(),
                                text: "В чём разница между Presenter и ViewModel?",
                                answer: "Presenter напрямую управляет View, вызывая её методы. ViewModel не знает о View напрямую и предоставляет состояние, на которое View подписывается через биндинги или Combine."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое VIPER?",
                                answer: "VIPER — архитектурный паттерн, состоящий из View, Interactor, Presenter, Entity и Router. Он обеспечивает строгое разделение ответственности и высокую тестируемость, но требует больше boilerplate-кода."
                            ),

                            Question(
                                id: UUID(),
                                text: "Когда использование VIPER оправдано?",
                                answer: "VIPER оправдан в больших проектах со сложной бизнес-логикой и несколькими командами. Для небольших приложений он часто избыточен."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое Coordinator Pattern?",
                                answer: "Coordinator — паттерн, выносящий логику навигации из ViewController в отдельные объекты. Это упрощает навигацию и снижает ответственность контроллеров."
                            ),

                            Question(
                                id: UUID(),
                                text: "Когда стоит использовать Coordinator?",
                                answer: "Coordinator полезен при сложной навигации, deep links, нескольких навигационных стеках и необходимости переиспользования логики переходов."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое Dependency Injection?",
                                answer: "Dependency Injection — это передача зависимостей извне, а не создание их внутри объекта. Это снижает связность и упрощает тестирование."
                            ),

                            Question(
                                id: UUID(),
                                text: "Какие преимущества Dependency Injection?",
                                answer: "DI улучшает тестируемость, позволяет подменять реализации (например, mock-сервисы), повышает гибкость и модульность кода."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое Clean Architecture?",
                                answer: "Clean Architecture — подход, организующий код в независимые слои (Domain, Data, Presentation) с направлением зависимостей к бизнес-логике. Это повышает переиспользуемость и независимость от UI и фреймворков."
                            ),

                            Question(
                                id: UUID(),
                                text: "Как Clean Architecture сочетается с MVVM?",
                                answer: "Clean Architecture определяет слои приложения, а MVVM применяется внутри Presentation слоя для разделения UI и логики отображения."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое separation of concerns?",
                                answer: "Это принцип, при котором каждый компонент системы отвечает только за одну чётко определённую задачу, что уменьшает связность и повышает тестируемость."
                            ),

                            Question(
                                id: UUID(),
                                text: "Как бороться с Massive ViewController?",
                                answer: "Логику следует выносить из ViewController в ViewModel, Interactor, сервисы и координаторы, уменьшая ответственность контроллера."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое MVVM-C?",
                                answer: "MVVM-C — это MVVM с использованием Coordinator, где ViewModel отвечает за состояние UI, а Coordinator — за навигацию."
                            ),

                            Question(
                                id: UUID(),
                                text: "Какие паттерны проектирования часто используются в iOS?",
                                answer: "Singleton, Delegate, Observer, Factory, Strategy, Adapter, Facade и Repository. Они помогают решать типовые архитектурные задачи."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое Protocol-Oriented Programming?",
                                answer: "POP — подход в Swift, основанный на использовании протоколов и расширений для описания поведения, что делает код более гибким и переиспользуемым."
                            ),

                            Question(
                                id: UUID(),
                                text: "Есть ли «лучшая» архитектура?",
                                answer: "Нет универсально лучшей архитектуры. Есть архитектура, подходящая под конкретную задачу, команду и масштаб проекта."
                            )
                        ]
                    ),
            TopicQuestion(
                        id: UUID(),
                        name: "Хранение данных, тестирование, отладка и деплой",
                        questions: [
                            Question(
                                id: UUID(),
                                text: "Какие способы хранения данных существуют в iOS?",
                                answer: "В iOS используются разные способы хранения данных: UserDefaults для простых настроек, Keychain для чувствительных данных, FileManager для файлов, Core Data как объектное хранилище, SQLite как низкоуровневая БД и Realm как сторонняя база данных."
                            ),

                            Question(
                                id: UUID(),
                                text: "Когда следует использовать UserDefaults?",
                                answer: "UserDefaults подходит для хранения небольших простых данных, таких как флаги, настройки и выбранная тема. Не предназначен для больших объёмов данных или чувствительной информации."
                            ),

                            Question(
                                id: UUID(),
                                text: "Почему нельзя хранить пароли в UserDefaults?",
                                answer: "UserDefaults не шифруется и может быть прочитан при доступе к устройству. Для хранения паролей и токенов следует использовать Keychain."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое Keychain?",
                                answer: "Keychain — это защищённое зашифрованное хранилище iOS для паролей, токенов и сертификатов. Оно интегрировано с системой безопасности и поддерживает Touch ID и Face ID."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое Core Data?",
                                answer: "Core Data — это фреймворк Apple для объектного хранения данных с поддержкой графа объектов, lazy loading, кеширования и миграций."
                            ),

                            Question(
                                id: UUID(),
                                text: "Core Data — это база данных?",
                                answer: "Нет. Core Data — это ORM-подобный слой. В качестве хранилища он может использовать SQLite, Binary или In-Memory storage."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое Managed Object Context?",
                                answer: "Managed Object Context — это рабочая область Core Data, в которой создаются, читаются и изменяются объекты перед сохранением в хранилище."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое миграции в Core Data?",
                                answer: "Миграции позволяют обновлять схему данных при изменении модели без потери существующих данных. Бывают lightweight и кастомные миграции."
                            ),

                            Question(
                                id: UUID(),
                                text: "В чём разница между Realm и Core Data?",
                                answer: "Realm проще в использовании и требует меньше boilerplate-кода. Core Data глубже интегрирован с iOS и лучше подходит для сложных сценариев и тонкой настройки."
                            ),

                            Question(
                                id: UUID(),
                                text: "Когда использовать FileManager?",
                                answer: "FileManager используется для работы с файлами: изображениями, PDF, кешем, а также для импорта и экспорта данных."
                            ),

                            Question(
                                id: UUID(),
                                text: "Какие типы тестов существуют в iOS?",
                                answer: "В iOS используются unit-тесты для отдельных компонентов, UI-тесты для проверки пользовательских сценариев и интеграционные тесты для взаимодействия компонентов."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое Unit Test?",
                                answer: "Unit-тесты проверяют отдельные компоненты приложения, такие как ViewModel или сервисы, без UI и внешних зависимостей."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое XCTest?",
                                answer: "XCTest — это фреймворк Apple для написания unit и UI тестов в Xcode."
                            ),

                            Question(
                                id: UUID(),
                                text: "В чём разница между mock и stub?",
                                answer: "Mock используется для проверки вызовов и взаимодействий, а stub — для возврата заранее заданных данных. Оба применяются для изоляции тестируемого кода."
                            ),

                            Question(
                                id: UUID(),
                                text: "Почему архитектура влияет на тестируемость?",
                                answer: "Хорошо разделённая архитектура с использованием MVVM и Dependency Injection позволяет тестировать бизнес-логику независимо от UI."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое UI-тесты?",
                                answer: "UI-тесты имитируют действия пользователя: нажатия, ввод текста и навигацию между экранами."
                            ),

                            Question(
                                id: UUID(),
                                text: "Какие инструменты отладки есть в Xcode?",
                                answer: "Xcode предоставляет Breakpoints, Console, LLDB, Memory Graph и Instruments для отладки и анализа приложения."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое Instruments?",
                                answer: "Instruments — это набор инструментов для анализа производительности, включая утечки памяти, загрузку CPU, FPS и энергопотребление."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое retain cycle?",
                                answer: "Retain cycle — это ситуация, когда объекты удерживают друг друга сильными ссылками и не освобождаются из памяти."
                            ),

                            Question(
                                id: UUID(),
                                text: "Как обнаружить утечки памяти?",
                                answer: "Для поиска утечек памяти используют Memory Graph, Instruments (Leaks) и анализ strong-ссылок."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое Time Profiler?",
                                answer: "Time Profiler — инструмент Instruments для анализа использования CPU и поиска узких мест в коде."
                            ),

                            Question(
                                id: UUID(),
                                text: "Какие базовые меры безопасности используются в iOS?",
                                answer: "К базовым мерам безопасности относятся HTTPS, Keychain, App Transport Security, certificate pinning и биометрическая аутентификация."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое App Transport Security (ATS)?",
                                answer: "ATS — это политика iOS, запрещающая небезопасные HTTP-соединения без использования HTTPS."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое SSL Pinning?",
                                answer: "SSL Pinning — это привязка сертификата сервера для защиты приложения от MITM-атак."
                            ),

                            Question(
                                id: UUID(),
                                text: "Как безопасно хранить токены авторизации?",
                                answer: "Токены авторизации следует хранить в Keychain и никогда не сохранять в UserDefaults или прямо в коде."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое Provisioning Profile?",
                                answer: "Provisioning Profile — это файл, связывающий App ID, сертификат и устройство или тип распространения приложения."
                            ),

                            Question(
                                id: UUID(),
                                text: "Чем отличается Debug сборка от Release?",
                                answer: "Debug сборка используется для разработки и не оптимизирована, а Release сборка оптимизирована и предназначена для публикации в App Store."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое App Store Connect?",
                                answer: "App Store Connect — это портал Apple для управления приложениями, загрузки билдов, TestFlight, аналитики и релизов."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое TestFlight?",
                                answer: "TestFlight — сервис Apple для бета-тестирования приложений перед публикацией в App Store."
                            ),

                            Question(
                                id: UUID(),
                                text: "Какие шаги публикации приложения в App Store?",
                                answer: "Публикация включает архивирование билда в Xcode, загрузку в App Store Connect, настройку метаданных, прохождение review и релиз приложения."
                            )
                        ]
                    ),
            TopicQuestion(
                        id: UUID(),
                        name: "Event Handling в UIKit",
                        questions: [
                            Question(
                                id: UUID(),
                                text: "Что такое обработка событий (Event Handling) в UIKit?",
                                answer: "Event Handling — это механизм доставки пользовательских и системных событий (касания, жесты, движения, нажатия клавиш) объектам приложения. UIKit получает события от системы, упаковывает их в UIEvent и передаёт по responder chain для обработки."
                            ),

                            Question(
                                id: UUID(),
                                text: "Какие типы событий существуют в UIKit?",
                                answer: "В UIKit существуют touch events (касания экрана), motion events (движения, например shake), remote control events (наушники, CarPlay) и press events (клавиатура, Apple TV, iPad)."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое UIResponder и зачем он нужен?",
                                answer: "UIResponder — базовый класс для объектов, участвующих в обработке событий. Он позволяет получать события, передавать их дальше по responder chain и обрабатывать touch, press и motion события. UIView, UIViewController, UIWindow и UIApplication наследуются от UIResponder."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое responder chain?",
                                answer: "Responder chain — это цепочка объектов, по которой передаётся событие до тех пор, пока оно не будет обработано. Обычно порядок следующий: UIView → UIViewController → UIWindow → UIApplication → AppDelegate или SceneDelegate."
                            ),

                            Question(
                                id: UUID(),
                                text: "Как система определяет, какой UIView получит touch?",
                                answer: "UIKit использует механизм hit-testing. Сначала вызывается hitTest(_:with:), затем point(inside:with:), после чего система рекурсивно проходит по иерархии view и выбирает самую глубокую подходящую view."
                            ),

                            Question(
                                id: UUID(),
                                text: "В чём разница между hitTest(_:with:) и point(inside:with:)?",
                                answer: "point(inside:with:) проверяет, находится ли точка внутри границ view, а hitTest(_:with:) определяет конкретную view, которая должна получить событие. Обычно hitTest использует point(inside:) внутри себя."
                            ),

                            Question(
                                id: UUID(),
                                text: "Когда вызываются методы touchesBegan, touchesMoved и touchesEnded?",
                                answer: "touchesBegan вызывается при касании экрана, touchesMoved — при перемещении пальца, touchesEnded — при завершении касания, а touchesCancelled — при отмене события системой."
                            ),

                            Question(
                                id: UUID(),
                                text: "Почему методы touches могут не вызываться?",
                                answer: "touches методы не вызываются, если isUserInteractionEnabled = false, alpha меньше 0.01, view скрыта, поверх неё есть другая view или если UIGestureRecognizer перехватывает событие."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое UIGestureRecognizer и чем он лучше touches?",
                                answer: "UIGestureRecognizer — это высокоуровневый механизм распознавания жестов. Он уменьшает количество кода, автоматически управляет состояниями жеста и позволяет комбинировать жесты без ручного отслеживания lifecycle касаний."
                            ),

                            Question(
                                id: UUID(),
                                text: "Какие основные состояния есть у UIGestureRecognizer?",
                                answer: "Основные состояния: possible, began, changed, ended, cancelled и failed."
                            ),

                            Question(
                                id: UUID(),
                                text: "Может ли UIView иметь несколько UIGestureRecognizer?",
                                answer: "Да, одна view может иметь несколько gesture recognizers. Их взаимодействие можно настраивать через require(toFail:) и gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что происходит, если на view есть UIButton и UITapGestureRecognizer?",
                                answer: "По умолчанию UIButton перехватывает touch. Поведение можно изменить, управляя isUserInteractionEnabled, свойством cancelsTouchesInView или приоритетами жестов."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что такое cancelsTouchesInView?",
                                answer: "cancelsTouchesInView — это свойство UIGestureRecognizer, которое определяет, будут ли touch-события отменены у view после распознавания жеста. По умолчанию значение true."
                            ),

                            Question(
                                id: UUID(),
                                text: "Как передать событие дальше по responder chain вручную?",
                                answer: "Технически можно вызвать next?.touchesBegan(...), но это считается плохой практикой. Предпочтительнее использовать делегаты, closures, NotificationCenter или Combine."
                            ),

                            Question(
                                id: UUID(),
                                text: "В каких случаях имеет смысл переопределять hitTest(_:with:)?",
                                answer: "Переопределение hitTest используется для расширения зоны нажатия, прокидывания touch сквозь view, создания кастомных контейнеров и работы со сложными UI с перекрытиями."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что важно понимать про Event Handling на Middle-уровне?",
                                answer: "Важно понимать работу responder chain, взаимодействие touches и gesture recognizers, механизм hit-testing, влияние свойств view на события и выбор между gestures и touches."
                            )
                        ]
                    ),
            TopicQuestion(
                        id: UUID(),
                        name: "Event Handling в SwiftUI",
                        questions: [
                            Question(
                                id: UUID(),
                                text: "Опиши полный путь нажатия на экран в iOS",
                                answer: "Полный путь события выглядит так: touch → UIEvent → UIWindow → hitTest(_:with:) → First Responder → обработка через gesture recognizers, UIControl или responder chain."
                            ),

                            Question(
                                id: UUID(),
                                text: "Чем отличается обработка touch-событий в UIKit и SwiftUI?",
                                answer: "UIKit использует responder chain, target-action и First Responder. SwiftUI работает через собственную gesture system и closures, не имея First Responder в классическом понимании."
                            ),

                            Question(
                                id: UUID(),
                                text: "В чём разница между hitTest(_:with:) и point(inside:with:)?",
                                answer: "point(inside:with:) проверяет, находится ли точка внутри view, а hitTest(_:with:) выбирает конкретную view, которая должна получить событие."
                            ),

                            Question(
                                id: UUID(),
                                text: "Когда стоит переопределять point(inside:with:), а не hitTest(_:with:)?",
                                answer: "Когда нужно изменить область нажатия, не нарушая иерархию view и работу responder chain."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что произойдёт, если hitTest(_:with:) всегда возвращает self?",
                                answer: "View будет перехватывать все события, из-за чего subviews и gesture recognizers могут перестать получать touch-события."
                            ),

                            Question(
                                id: UUID(),
                                text: "Кто становится First Responder при касании экрана?",
                                answer: "First Responder — это view, возвращённая методом hitTest(_:with:). Она является стартовой точкой responder chain."
                            ),

                            Question(
                                id: UUID(),
                                text: "Является ли First Responder тем, кто обязательно обработает событие?",
                                answer: "Нет. First Responder — это только первая точка обработки, после которой событие может быть передано дальше по responder chain."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что произойдёт, если не вызвать super.touchesBegan()?",
                                answer: "Событие не будет передано дальше по responder chain, и вышестоящие responder-объекты не получат его."
                            ),

                            Question(
                                id: UUID(),
                                text: "Где в пайплайне обработки событий находятся UIGestureRecognizer?",
                                answer: "Gesture recognizers обрабатывают события после hitTest, но до стандартной обработки через responder chain."
                            ),

                            Question(
                                id: UUID(),
                                text: "Может ли gesture recognizer отменить обработку touches?",
                                answer: "Да. Свойство cancelsTouchesInView позволяет отменить передачу touch-событий view после распознавания жеста."
                            ),

                            Question(
                                id: UUID(),
                                text: "Как UIButton обрабатывает нажатие?",
                                answer: "UIButton самостоятельно обрабатывает touches и вызывает sendActions(for:). Для поиска target используется responder chain, но сами touch-события не передаются дальше."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что происходит, если у UIControl target равен nil?",
                                answer: "UIKit пытается найти подходящий target, проходя по responder chain."
                            ),

                            Question(
                                id: UUID(),
                                text: "Есть ли First Responder в SwiftUI?",
                                answer: "Нет. SwiftUI не использует responder chain, вместо этого применяется gesture system и focus state."
                            ),

                            Question(
                                id: UUID(),
                                text: "Как SwiftUI определяет, куда пришёл тап?",
                                answer: "Сначала используется UIHostingView.hitTest, после чего событие сопоставляется с gesture graph SwiftUI."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что является аналогом point(inside:) в SwiftUI?",
                                answer: "В SwiftUI аналогом является contentShape, который определяет область, реагирующую на жесты."
                            ),

                            Question(
                                id: UUID(),
                                text: "Как SwiftUI решает конфликты между несколькими жестами?",
                                answer: "SwiftUI использует приоритеты жестов: highPriorityGesture, simultaneousGesture, а также порядок жестов в иерархии view."
                            ),

                            Question(
                                id: UUID(),
                                text: "Почему onTapGesture в SwiftUI может не срабатывать?",
                                answer: "Причины могут быть в отсутствии contentShape, перехвате жеста родительской view или наличии жеста с более высоким приоритетом."
                            ),

                            Question(
                                id: UUID(),
                                text: "Как концептуально реализован Button в SwiftUI?",
                                answer: "Button — это декларация жеста с action closure, которая изменяет состояние и инициирует обновление UI."
                            ),

                            Question(
                                id: UUID(),
                                text: "Почему Button в SwiftUI не использует target-action?",
                                answer: "Потому что SwiftUI основан на closures и state-driven обновлениях, а не на responder chain."
                            ),

                            Question(
                                id: UUID(),
                                text: "Что происходит с событием, если ни один handler его не обработал?",
                                answer: "В UIKit событие либо игнорируется, либо применяется стандартное поведение (например, scroll или highlight). В SwiftUI событие просто не приводит к действию."
                            ),

                            Question(
                                id: UUID(),
                                text: "Почему SwiftUI сложнее дебажить, чем UIKit?",
                                answer: "Потому что обработка событий и обновления UI скрыты внутри runtime SwiftUI и выполняются асинхронно через механизм диффинга."
                            ),

                            Question(
                                id: UUID(),
                                text: "Почему в SwiftUI нельзя напрямую перехватить touch?",
                                answer: "SwiftUI не экспонирует UIEvent и работает на уровне декларативных жестов, а не низкоуровневых touch-событий."
                            ),

                            Question(
                                id: UUID(),
                                text: "Можно ли реализовать responder chain в SwiftUI?",
                                answer: "Нет напрямую. В SwiftUI можно управлять только приоритетами жестов и состоянием фокуса."
                            ),

                            Question(
                                id: UUID(),
                                text: "Можно ли в SwiftUI расширить область нажатия без изменения layout?",
                                answer: "Да. Для этого используется contentShape, который увеличивает интерактивную область."
                            )
                        ]
                    ),
            TopicQuestion(
                        id: UUID(),
                        name: "Automatic Reference Counting",
                        questions: [
                            Question(
                                id: UUID(),
                                text: "Что такое ARC в Swift?",
                                answer: "ARC — автоматическая система управления временем жизни объектов reference-типа, основанная на подсчёте ссылок."
                            ),
                            Question(
                                id: UUID(),
                                text: "На какие типы действует ARC?",
                                answer: "На class, actor, closure, @objc class и протоколы class/AnyObject."
                            ),
                            Question(
                                id: UUID(),
                                text: "На какие типы ARC не распространяется?",
                                answer: "На struct, enum, tuple и примитивы (Int, Bool и др.) — они управляются через value semantics."
                            ),
                            Question(
                                id: UUID(),
                                text: "Где размещаются объекты классов?",
                                answer: "В куче (heap). ARC управляет только объектами в куче."
                            ),
                            Question(
                                id: UUID(),
                                text: "Где размещаются структуры?",
                                answer: "На стеке, в регистрах либо inline внутри других объектов — в зависимости от оптимизаций компилятора."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему ARC не работает со структурами?",
                                answer: "Потому что value-типы копируются, а не разделяют владение."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое strong reference?",
                                answer: "Ссылка, увеличивающая retain count и удерживающая объект в памяти."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое weak reference?",
                                answer: "Ссылка, не увеличивающая retain count, всегда optional и автоматически обнуляющаяся при деинициализации объекта."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое unowned reference?",
                                answer: "Ссылка, не увеличивающая retain count, не optional и приводящая к crash при обращении к уже освобождённому объекту."
                            ),
                            Question(
                                id: UUID(),
                                text: "Когда использовать weak?",
                                answer: "Когда объект может завершить жизнь раньше closure или владельца: делегаты, UI, async-таски."
                            ),
                            Question(
                                id: UUID(),
                                text: "Когда использовать unowned?",
                                answer: "Когда объект гарантированно живёт дольше closure, например замыкания внутри owner."
                            ),
                            Question(
                                id: UUID(),
                                text: "Может ли weak быть non-optional?",
                                answer: "Нет. Weak всегда optional."
                            ),
                            Question(
                                id: UUID(),
                                text: "Может ли unowned быть optional?",
                                answer: "Да, через unowned(unsafe), но это крайне опасно и используется редко."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое retain cycle?",
                                answer: "Ситуация, когда объекты удерживают друг друга сильными ссылками и ARC не может освободить память."
                            ),
                            Question(
                                id: UUID(),
                                text: "Может ли структура создать retain cycle?",
                                answer: "Нет, но она может содержать class, который участвует в retain cycle."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое closure capture cycle?",
                                answer: "Closure сильно удерживает объект, а объект хранит closure — образуется цикл."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему closure по умолчанию захватывает strongly?",
                                answer: "Потому что это самая безопасная и предсказуемая семантика."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как предотвратить capture cycle?",
                                answer: "Использовать [weak self], [unowned self] или архитектурно разрывать цикл."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему async/await может создавать утечки?",
                                answer: "Task удерживает closure, а closure удерживает self."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как избежать утечек при async/await?",
                                answer: "Использовать [weak self], capture list и withTaskCancellationHandler."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое self leak в Task?",
                                answer: "Когда Task живёт дольше объекта и удерживает его сильной ссылкой."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему утечки чаще возникают в TaskGroup?",
                                answer: "Group удерживает задачи, а задачи удерживают self."
                            ),
                            Question(
                                id: UUID(),
                                text: "Является ли actor reference-типом?",
                                answer: "Да. Actor — reference type с потокобезопасностью."
                            ),
                            Question(
                                id: UUID(),
                                text: "Могут ли actors создавать retain cycles?",
                                answer: "Да, так же как и классы."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое retain/release elision?",
                                answer: "Оптимизация компилятора, убирающая избыточные ARC-вызовы."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое borrow semantics?",
                                answer: "Временное заимствование объекта без увеличения retain count."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему autoreleasepool всё ещё существует?",
                                answer: "Для корректной работы с ObjC-кодом, создающим autoreleased-объекты."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое lifetime extension?",
                                answer: "Продление жизни объекта компилятором дольше видимой области использования."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему unowned опаснее weak?",
                                answer: "Unowned не проверяется на nil и может привести к EXC_BAD_ACCESS."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как обнаружить retain cycle?",
                                answer: "С помощью Instruments: Leaks, Allocations и Cycle Detection."
                            ),
                            Question(
                                id: UUID(),
                                text: "Может ли ARC освободить actor во время выполнения метода?",
                                answer: "Нет. Actor автоматически удерживается на время выполнения."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое lifetime extension?",
                                answer: "Автоматическое продление жизни объекта компилятором, например при использовании optional chaining или inout."
                            ),
                            Question(
                                id: UUID(),
                                text: "Может ли ARC вызвать race-condition?",
                                answer: "Да. Операции retain и release не атомарны, поэтому возможны гонки при доступе к объектам из разных потоков."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое weak/unowned race?",
                                answer: "Ситуация, когда объект освобождается на другом потоке в момент обращения через weak или unowned, что приводит к nil или crash."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему unowned опаснее weak?",
                                answer: "Unowned не проверяется на nil и при обращении к освобождённому объекту приводит к EXC_BAD_ACCESS."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как работает side-table для weak-ссылок?",
                                answer: "Weak-ссылки хранятся вне объекта в специальной таблице, которая обновляется и обнуляется при деинициализации объекта."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему Timer часто создаёт утечки памяти?",
                                answer: "Timer удерживает target сильной ссылкой, а замыкание внутри часто удерживает self, образуя retain cycle."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как избежать утечки в Timer?",
                                answer: "Использовать [weak self], invalidate таймер или применять weak proxy / CADisplayLink."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему Combine может создавать retain cycles?",
                                answer: "Потому что замыкания внутри операторов Combine удерживают self сильными ссылками."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как избежать утечек в Combine?",
                                answer: "Использовать [weak self], корректно управлять cancellables и вызывать cancel()."
                            ),
                            Question(
                                id: UUID(),
                                text: "Является ли retain count потокобезопасным?",
                                answer: "Нет. ARC-операции не атомарны."
                            ),
                            Question(
                                id: UUID(),
                                text: "Может ли ARC освободить объект раньше времени?",
                                answer: "Нет. При корректном коде ARC не освобождает объект раньше, но lifetime extension может продлить его жизнь."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему иногда объекты не деинициализируются до конца runloop?",
                                answer: "Из-за autoreleasepool и отложенных release-операций."
                            ),
                            
                            Question(
                                id: UUID(),
                                text: "Для чего нужен autorelease pool?",
                                answer: "Autorelease pool — это механизм управления памятью Objective-C runtime, который: \n •    временно удерживает объекты, \n•    помеченные как autoreleased, \n• и освобождает их позже, одним батчем. \n Проще: это «корзина временных объектов», которая очищается в определённый момент.)"
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое transitive retain cycle?",
                                answer: "Цикл через цепочку объектов, например A → B → C → A."
                            ),
                            Question(
                                id: UUID(),
                                text: "Может ли ARC освободить объект внутри deinit?",
                                answer: "Нет. Если deinit выполняется, объект уже удерживается последней сильной ссылкой."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как обнаружить retain cycle?",
                                answer: "С помощью Instruments: Leaks, Allocations и Cycle Detection."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как работает weak storage под капотом?",
                                answer: "Объект ведёт список слабых ссылок, которые автоматически обнуляются в момент deinit."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что происходит при захвате self в escaping closure?",
                                answer: "Self продлевает своё время жизни до завершения closure."
                            ),
                            Question(
                                id: UUID(),
                                text: "Когда использовать unowned self внутри lazy-свойств?",
                                answer: "Когда closure гарантированно не переживёт объект-владельца."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему захваты по копии важны?",
                                answer: "Они фиксируют значение на момент создания closure и предотвращают гонки и ошибки логики."
                            ),
                            Question(
                                id: UUID(),
                                text: "Может ли ARC освободить actor на середине выполнения метода?",
                                answer: "Нет. Actor автоматически удерживается на время выполнения метода."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое escaping и non-escaping замыкания в контексте ARC?",
                                answer: "Escaping-замыкания продлевают жизнь захваченных объектов, non-escaping — нет."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему @MainActor может скрывать утечки?",
                                answer: "Потому что код всегда выполняется в одном потоке и время жизни self может быть незаметно увеличено."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое retain count в Swift?",
                                answer: "Это абстракция. Прямого доступа к счётчику ссылок в Swift нет."
                            ),
                            Question(
                                id: UUID(),
                                text: "Может ли closure захватить value-type так, что он станет reference-type?",
                                answer: "Да, при использовании Box-контейнеров, @unchecked Sendable и escaping-захватов."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое ARC traffic?",
                                answer: "Количество retain и release операций, влияющее на производительность."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как сократить ARC-операции?",
                                answer: "Использовать value-типы, borrow semantics, inout и @inlineable."
                            ),
                            Question(
                                id: UUID(),
                                text: "Может ли actor скрыть retain cycle?",
                                answer: "Да. Цикл внутри actor или между actor и closure может быть неочевиден из-за сериализации."
                            ),
                            Question(
                                id: UUID(),
                                text: "Влияет ли concurrency на ARC?",
                                answer: "Да. ARC может становиться точкой синхронизации между потоками."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое deallocation barrier?",
                                answer: "Гарантия, что объект будет освобождён только при отсутствии всех сильных ссылок."
                            ),
                            Question(
                                id: UUID(),
                                text: "Может ли unowned помочь в производительности?",
                                answer: "Да. Он снижает ARC-операции, но увеличивает риск crash."
                            )
                        ]
                    ),
            TopicQuestion(
                        id: UUID(),
                        name: "Runtime UIKit и SwiftUI",
                        questions: [
                            Question(
                                id: UUID(),
                                text: "Что такое Swift runtime и за что он отвечает?",
                                answer: "Swift runtime — это набор библиотек, обеспечивающих выполнение Swift-кода во время работы программы. Он отвечает за ARC, metadata типов, generics, protocol witness tables, dynamic casting (as?, is) и взаимодействие с Objective-C runtime."
                            ),
                            Question(
                                id: UUID(),
                                text: "Чем Swift runtime отличается от Objective-C runtime?",
                                answer: "Swift runtime типо-ориентированный и в основном статический, тогда как Objective-C runtime полностью динамический. Swift использует vtable и witness tables, а Objective-C — message sending через objc_msgSend. UIKit по-прежнему опирается на Obj-C runtime."
                            ),
                            Question(
                                id: UUID(),
                                text: "Когда в Swift используется dynamic dispatch?",
                                answer: "Dynamic dispatch используется при вызове методов классов, помеченных @objc или dynamic, при работе с протоколами без associatedtype и при использовании Objective-C interoperability."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое RunLoop и зачем он нужен?",
                                answer: "RunLoop — это цикл обработки событий на потоке. Он принимает системные события (touch, timers, async callbacks) и последовательно обрабатывает их. В iOS весь UI работает только на main run loop."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что произойдёт, если заблокировать main run loop?",
                                answer: "UI перестанет отвечать: не будут обрабатываться touch-события, анимации и перерисовка экрана. Приложение визуально зависнет."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как UIKit обрабатывает нажатие кнопки?",
                                answer: "Touch-событие попадает в main run loop, UIKit выполняет hit-testing, находит UIButton и вызывает target-action через Objective-C runtime с помощью objc_msgSend."
                            ),
                            Question(
                                id: UUID(),
                                text: "Является ли View в SwiftUI объектом?",
                                answer: "Нет. View в SwiftUI — это value type (обычно struct), который не живёт в памяти постоянно. Он используется как описание UI и пересоздаётся при каждом обновлении."
                            ),
                            Question(
                                id: UUID(),
                                text: "Где хранятся данные @State?",
                                answer: "@State хранится вне View — в специальном runtime storage в heap. View получает доступ к этому хранилищу через binding."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему нельзя изменять @State во время вычисления body?",
                                answer: "Потому что body должен быть чистой функцией от состояния. Изменение состояния во время вычисления body вызывает бесконечный цикл обновлений."
                            ),
                            Question(
                                id: UUID(),
                                text: "В чём разница между @State и @ObservedObject?",
                                answer: "@State используется для локального состояния внутри View. @ObservedObject применяется для внешнего состояния, управляемого объектом, который может использоваться несколькими View."
                            ),
                            Question(
                                id: UUID(),
                                text: "Когда использовать @StateObject, а не @ObservedObject?",
                                answer: "@StateObject используют, когда View владеет объектом и отвечает за его жизненный цикл. @ObservedObject применяют, когда объект передаётся извне."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что делает @Environment?",
                                answer: "@Environment позволяет получать зависимости (например, colorScheme, locale) из окружения, которое распространяется по иерархии View."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как SwiftUI обрабатывает нажатие кнопки без target-action?",
                                answer: "SwiftUI связывает системное событие с closure. При нажатии вызывается closure, которая обычно изменяет состояние и инициирует обновление UI."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему обновление UI в SwiftUI не происходит мгновенно?",
                                answer: "SwiftUI агрегирует изменения состояния в транзакции и применяет их на следующей итерации run loop для оптимизации производительности."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое diffing в SwiftUI?",
                                answer: "Diffing — это процесс сравнения старого и нового описания UI, чтобы определить минимальный набор изменений для применения к реальному интерфейсу."
                            ),
                            Question(
                                id: UUID(),
                                text: "Зачем нужен id() в SwiftUI?",
                                answer: "id() задаёт идентичность View. Без него SwiftUI может пересоздавать View при каждом обновлении, теряя состояние и анимации."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что произойдёт, если изменить порядок элементов без id?",
                                answer: "SwiftUI может неправильно сопоставить старые и новые View, что приведёт к сбросу состояния или некорректным анимациям."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему body может вызываться много раз?",
                                answer: "Потому что SwiftUI пересчитывает body при любом изменении зависимого состояния. Это нормальное и ожидаемое поведение."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как избежать лишних перерисовок в SwiftUI?",
                                answer: "Использовать корректный scope состояния, избегать крупных @State в корневых View, применять EquatableView и выносить сложную логику из body."
                            ),
                            Question(
                                id: UUID(),
                                text: "Может ли SwiftUI иметь memory leaks?",
                                answer: "Да. Чаще всего из-за retain cycles в closure, неправильного использования ObservableObject и хранения сильных ссылок в environment."
                            ),
                            Question(
                                id: UUID(),
                                text: "Основное архитектурное отличие SwiftUI от UIKit?",
                                answer: "UIKit — императивный фреймворк, где мы указываем что делать. SwiftUI — декларативный, где мы описываем состояние, а runtime решает, как обновить UI."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему SwiftUI проще масштабировать, но сложнее дебажить?",
                                answer: "Потому что состояние и логика декларативны и централизованы, но реальные обновления UI происходят асинхронно и скрыты внутри runtime, что усложняет трассировку."
                            )
                        ]
                    ),
            TopicQuestion(
                        id: UUID(),
                        name: "Method Dispatch в Swift",
                        questions: [
                            Question(
                                id: UUID(),
                                text: "Что такое диспетчеризация методов?",
                                answer: "Диспетчеризация — это механизм, который определяет, какая реализация метода будет вызвана при обращении к нему. В Swift выбор механизма происходит либо во время компиляции, либо во время выполнения и зависит от типа (struct, class), наличия наследования, использования final, dynamic, @objc, а также от протоколов и generics."
                            ),
                            Question(
                                id: UUID(),
                                text: "Какие виды диспетчеризации существуют в Swift?",
                                answer: "В Swift существует четыре основных механизма диспетчеризации: static dispatch (прямой вызов на этапе компиляции), virtual dispatch (через vtable для классов), protocol dispatch (через witness table для протоколов) и dynamic dispatch (через Objective-C runtime с objc_msgSend)."
                            ),
                            Question(
                                id: UUID(),
                                text: "Чем static dispatch отличается от dynamic dispatch?",
                                answer: "Static dispatch определяется на этапе компиляции, является самым быстрым, не поддерживает полиморфизм и используется в struct, enum и final class. Dynamic dispatch определяется во время выполнения, самый медленный, поддерживает runtime-подмену и используется с @objc и dynamic."
                            ),
                            Question(
                                id: UUID(),
                                text: "Когда Swift использует static dispatch?",
                                answer: "Swift использует static dispatch, когда компилятор точно знает реализацию метода: для struct и enum, final class, методов без override, private и fileprivate методов, а также часто в generic-контексте."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как работает virtual dispatch в Swift?",
                                answer: "Virtual dispatch применяется для классов и реализуется через vtable. Каждый класс имеет таблицу виртуальных методов, объект хранит ссылку на эту таблицу, а конкретная реализация метода выбирается по типу объекта во время выполнения, что обеспечивает полиморфизм."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что делает ключевое слово final?",
                                answer: "final запрещает наследование или переопределение метода. Это позволяет компилятору убрать vtable, использовать static dispatch и выполнять inline-оптимизации, делая код быстрее."
                            ),
                            Question(
                                id: UUID(),
                                text: "Влияет ли private на диспетчеризацию?",
                                answer: "Да. private и fileprivate методы не могут быть переопределены за пределами области видимости, поэтому компилятор может использовать static dispatch."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как работает диспетчеризация в протоколах?",
                                answer: "Для протоколов Swift использует witness table. При конформансе типа к протоколу создаётся таблица соответствий, где каждому требованию протокола сопоставлена конкретная реализация, а вызов метода происходит через эту таблицу."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое witness table?",
                                answer: "Witness table — это структура данных, которая связывает требования протокола с конкретными реализациями типа. Она используется, когда конкретный тип неизвестен на этапе компиляции."
                            ),
                            Question(
                                id: UUID(),
                                text: "В чём разница между методом протокола и методом из protocol extension?",
                                answer: "Метод, объявленный в протоколе, участвует в protocol dispatch через witness table. Метод, объявленный только в protocol extension, вызывается статически, и override в конкретном типе может не быть вызван."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему методы из protocol extension могут вести себя неожиданно?",
                                answer: "Потому что методы из protocol extension не входят в witness table. Если переменная имеет тип протокола, будет вызвана реализация из extension, даже если конкретный тип определяет свою версию метода."
                            ),
                            Question(
                                id: UUID(),
                                text: "Когда Swift использует Objective-C runtime?",
                                answer: "Swift использует Objective-C runtime, когда класс наследуется от NSObject, метод помечен @objc или dynamic, используется KVO или method swizzling. В этих случаях применяется objc_msgSend."
                            ),
                            Question(
                                id: UUID(),
                                text: "Зачем нужен dynamic?",
                                answer: "dynamic принудительно заставляет Swift использовать dynamic dispatch через Objective-C runtime даже для Swift-классов. Это необходимо для KVO, method swizzling и runtime-подмены методов."
                            ),
                            Question(
                                id: UUID(),
                                text: "Можно ли использовать dynamic без @objc?",
                                answer: "Нет. dynamic всегда подразумевает использование Objective-C runtime, поэтому метод должен быть доступен Objective-C через @objc или наследование от NSObject."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему generics часто быстрее, чем протоколы?",
                                answer: "В generic-коде компилятор знает конкретный тип T, используется static dispatch и возможны inline-оптимизации. Протоколы чаще требуют вызовов через witness table."
                            ),
                            Question(
                                id: UUID(),
                                text: "Какой тип диспетчеризации будет использован при вызове метода у переменной протокольного типа?",
                                answer: "Будет использована protocol dispatch через witness table, потому что тип переменной — протокол, и конкретная реализация выбирается во время выполнения."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему метод из protocol extension вызывается вместо реализации типа?",
                                answer: "Потому что метод определён в protocol extension и вызывается статически по типу переменной, если она имеет тип протокола."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как проверить, какой тип диспетчеризации используется?",
                                answer: "На практике анализируют типы (struct, class, final), наличие @objc и dynamic, использование protocol extension и generic-контекста. Также можно использовать флаги компилятора (-emit-sil, -O), но на собеседованиях ожидают логическое объяснение."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как выбор диспетчеризации влияет на архитектуру?",
                                answer: "Struct + protocol дают высокую производительность и value semantics. Классы обеспечивают полиморфизм, но медленнее. @objc dynamic даёт максимальную гибкость, но имеет высокую стоимость. Хорошая архитектура минимизирует dynamic dispatch."
                            ),
                            Question(
                                id: UUID(),
                                text: "Когда стоит предпочесть протоколы, а не наследование?",
                                answer: "Когда не нужен shared state, важна композиция, используются value types, а также для тестируемости и dependency injection. Протоколы дают гибкость без жёсткой иерархии классов."
                            )
                        ]
                    ),
            TopicQuestion(
                        id: UUID(),
                        name: "Safe Area в UIKit",
                        questions: [
                            Question(
                                id: UUID(),
                                text: "Что такое Safe Area и зачем она нужна?",
                                answer: "Safe Area — это область экрана, в которой контент не перекрывается системными элементами: статус-баром, notch, navigation bar, tab bar, home indicator и системными жестами. Она позволяет создавать адаптивный UI без хардкода отступов под разные устройства."
                            ),
                            Question(
                                id: UUID(),
                                text: "Чем Safe Area отличается от bounds и frame?",
                                answer: "bounds — это размер view в собственной системе координат. frame — положение view относительно superview. Safe Area — это внутренняя область view, безопасная для размещения контента и учитывающая системный UI."
                            ),
                            Question(
                                id: UUID(),
                                text: "С какой версии iOS появилась Safe Area?",
                                answer: "Safe Area появилась в iOS 11 и заменила собой topLayoutGuide и bottomLayoutGuide."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое safeAreaInsets?",
                                answer: "safeAreaInsets — это UIEdgeInsets, показывающие, какая часть view занята системными элементами. Значения корректны только после layout и могут изменяться при ротации экрана, появлении navigation bar или tab bar."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему нельзя использовать safeAreaInsets в viewDidLoad?",
                                answer: "В viewDidLoad layout ещё не выполнен, поэтому safeAreaInsets имеют нулевые или некорректные значения. Корректные места для работы с ними — viewDidLayoutSubviews и viewSafeAreaInsetsDidChange."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое safeAreaLayoutGuide и зачем он нужен?",
                                answer: "safeAreaLayoutGuide — это layout guide для Auto Layout, который позволяет привязывать констрейнты к безопасной области экрана. Он автоматически учитывает статус бар, navigation bar, tab bar и ориентацию экрана."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как правильно закрепить view к верхней части экрана?",
                                answer: "View следует привязывать к parentView.safeAreaLayoutGuide.topAnchor, а не к topAnchor superview, иначе контент может оказаться под notch или navigation bar."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как navigation bar и tab bar влияют на Safe Area?",
                                answer: "Navigation bar и tab bar уменьшают safe area. Контент, привязанный к safeAreaLayoutGuide, автоматически располагается ниже navigation bar и выше tab bar."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что такое additionalSafeAreaInsets?",
                                answer: "additionalSafeAreaInsets позволяет вручную изменить safe area для конкретного UIViewController. Используется для кастомных overlay-элементов, floating buttons или собственных toolbar."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как Safe Area работает с UIScrollView?",
                                answer: "Scroll view должна быть закреплена к safeAreaLayoutGuide, а её контент — к contentLayoutGuide и frameLayoutGuide. Это обеспечивает корректный скролл и правильный размер контента."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему UIScrollView часто ломается без Safe Area?",
                                answer: "Без safe area scroll view может уходить под navigation bar, некорректно считать content size и неправильно реагировать на inset’ы. Правильная настройка учитывает safe area и layout guides."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как Safe Area реагирует на поворот экрана?",
                                answer: "При ротации пересчитываются safeAreaInsets, обновляется safeAreaLayoutGuide и вызывается viewSafeAreaInsetsDidChange. UI автоматически адаптируется при корректных констрейнтах."
                            ),
                            Question(
                                id: UUID(),
                                text: "Входит ли клавиатура в Safe Area?",
                                answer: "Нет, клавиатура не входит в safe area. Для работы с клавиатурой рекомендуется использовать keyboardLayoutGuide, доступный с iOS 15."
                            ),
                            Question(
                                id: UUID(),
                                text: "Когда нужно игнорировать Safe Area?",
                                answer: "Safe Area игнорируют, когда контент должен быть fullscreen: видео, карты, onboarding или splash screens. В таких случаях view привязывают к edges superview."
                            ),
                            Question(
                                id: UUID(),
                                text: "Какие типичные ошибки с Safe Area делают разработчики?",
                                answer: "Частые ошибки: использование safeAreaInsets слишком рано, хардкод отступов, привязка UI к topAnchor вместо safe area, неправильная настройка scroll view и игнорирование изменений safe area при ротации."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как бы вы объяснили Safe Area джуну?",
                                answer: "Safe Area — это способ сказать системе: размести мой контент так, чтобы пользователь точно увидел его и мог с ним взаимодействовать на любом устройстве."
                            )
                        ]
                    ),
            TopicQuestion(
                        id: UUID(),
                        name: "Reuse Pool: UIKit vs SwiftUI",
                        questions: [
                            Question(
                                id: UUID(),
                                text: "Что такое reuse pool в UIKit?",
                                answer: "Reuse pool — это внутренний механизм UITableView и UICollectionView, который позволяет повторно использовать экземпляры ячеек и supplementary views, ушедшие за пределы видимой области, вместо их уничтожения и повторного создания. Это снижает нагрузку на память и CPU и обеспечивает плавный скролл."
                            ),
                            Question(
                                id: UUID(),
                                text: "Зачем UIKit нужен reuse pool?",
                                answer: "UIView имеет дорогой lifecycle. Без reuse pool при прокрутке списков происходили бы постоянные аллокации и деаллокации, что приводило бы к падению FPS, увеличению нагрузки на ARC и росту энергопотребления."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как UIKit определяет, какие ячейки можно переиспользовать?",
                                answer: "По reuseIdentifier. UIKit хранит отдельный пул для каждого identifier и никогда не переиспользует ячейки между разными reuseIdentifier, даже если их классы совпадают."
                            ),
                            Question(
                                id: UUID(),
                                text: "Когда вызывается prepareForReuse и зачем он нужен?",
                                answer: "prepareForReuse вызывается перед повторной выдачей ячейки из reuse pool. Он используется для сброса временного состояния: текста, изображений, асинхронных операций и флагов, чтобы избежать утечки состояния между разными данными."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему нельзя хранить indexPath внутри ячейки?",
                                answer: "Потому что indexPath — это контекст размещения, а не свойство ячейки. После reuse ячейка может соответствовать другому indexPath, и сохранённое значение станет некорректным, что приведёт к логическим ошибкам."
                            ),
                            Question(
                                id: UUID(),
                                text: "Что произойдёт, если генерировать уникальный reuseIdentifier для каждой ячейки?",
                                answer: "Reuse pool перестанет работать. UIKit будет постоянно создавать новые ячейки, что приведёт к росту потребления памяти, ухудшению производительности и лагам при скролле."
                            ),
                            Question(
                                id: UUID(),
                                text: "Является ли reuse pool кэшем?",
                                answer: "Нет. Reuse pool не гарантирует сохранность объектов. UIKit может очистить его при memory warning, reload данных или изменении layout. Это механизм оптимизации UI, а не хранения данных."
                            ),
                            Question(
                                id: UUID(),
                                text: "Использует ли SwiftUI reuse pool?",
                                answer: "Нет. SwiftUI не использует reuse pool. SwiftUI View — это value-type декларации, а не долгоживущие объекты, поэтому переиспользование объектов не требуется."
                            ),
                            Question(
                                id: UUID(),
                                text: "Чем SwiftUI заменяет reuse pool?",
                                answer: "SwiftUI использует diffing engine, который сравнивает старое и новое описание UI и обновляет только изменившиеся части. Identity элементов определяется данными, а не объектами view."
                            ),
                            Question(
                                id: UUID(),
                                text: "Как в SwiftUI определяется «та же самая строка» в списке?",
                                answer: "Через identity данных — обычно с помощью Identifiable или явного id в ForEach. Если id совпадает, SwiftUI считает элемент тем же самым и сохраняет связанное с ним состояние."
                            ),
                            Question(
                                id: UUID(),
                                text: "Почему в SwiftUI не нужен prepareForReuse?",
                                answer: "Потому что состояние привязано к данным, а не к view. Когда элемент теряет identity, связанное состояние уничтожается автоматически, и ручной сброс состояния не требуется."
                            ),
                            Question(
                                id: UUID(),
                                text: "Какие типичные ошибки reuse pool в UIKit невозможны в SwiftUI?",
                                answer: "Утечки состояния между строками, асинхронные колбэки в reused ячейку и забытый reset UI в prepareForReuse. Эти проблемы устраняются за счёт декларативной модели и identity-based состояния."
                            ),
                            Question(
                                id: UUID(),
                                text: "Значит ли это, что SwiftUI всегда производительнее UIKit?",
                                answer: "Нет. SwiftUI перекладывает сложность на diffing engine и может быть менее предсказуем по производительности в сложных и глубоко вложенных иерархиях. UIKit даёт больший контроль, но требует дисциплины при работе с reuse pool."
                            ),
                            Question(
                                id: UUID(),
                                text: "Сформулируйте ключевое архитектурное различие одной фразой",
                                answer: "UIKit оптимизирует повторное использование объектов, а SwiftUI оптимизирует обновление деклараций на основе состояния."
                            ),
                            Question(
                                id: UUID(),
                                text: "Когда знание reuse pool особенно важно на практике?",
                                answer: "При работе с большими списками, кастомными ячейками, асинхронной загрузкой данных, сложным Auto Layout и оптимизацией скролла и memory footprint."
                            )
                            ]
                    ),
            ]
        
    }
}

