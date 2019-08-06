Class {
	#name : #CSNModelImporterHTMLVisitor,
	#superclass : #CSNModelImporterVisitor,
	#category : #'Casino-HTML-Importer'
}

{ #category : #'instance creation' }
CSNModelImporterHTMLVisitor >> createAttributeFor: attributeElement [
	^ (self create: self)
		name: attributeElement name;
		attributeValue: attributeElement value asLowercase;
		widget: attributeElement;
		yourself
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> createWidget: aWidgetClass for: widgetElement [
	^ (self create: aWidgetClass)
		source: widgetElement;
		name: widgetElement name;
		yourself
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visit: anElement [
	^ anElement accept: self
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIAlt: aCSNUIAlt [
	^ source name = 'alt' ifTrue: [ self createAttributeFor: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIButton: aCSNUIButton [
	^ (source name = 'input' and: [ (source attributeAt: 'type' ifAbsent: [ ^ false ]) = 'checkbox' ]) ifTrue: [ self createWidget: aCSNUIButton for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUICanvas: aCSNUICanvas [
	^ (source name = 'canvas') ifTrue: [ self createWidget: aCSNUICanvas for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIClass: aCSNUIClass [
	^ source name = 'class' ifTrue: [ self createAttributeFor: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIDisabled: aCSNUIDisabled [
	^ source name = 'disabled' ifTrue: [ self createAttributeFor: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIHeading1: aCSNUIHeading1 [
	^ (source name = 'h1') ifTrue: [ self createWidget: aCSNUIHeading1 for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIHeading2: aCSNUIHeading2 [
	^ source name = 'h2' ifTrue: [ self createWidget: aCSNUIHeading2 for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIHeading3: aCSNUIHeading3 [
	^ source name = 'h3' ifTrue: [ self createWidget: aCSNUIHeading3 for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIHeading4: aCSNUIHeading4 [
	^ source name = 'h4' ifTrue: [ self createWidget: aCSNUIHeading4 for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIHeading5: aCSNUIHeading5 [
	^ source name = 'h5' ifTrue: [ self createWidget: aCSNUIHeading5 for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIHeading6: aCSNUIHeading6 [
	^ source name = 'h6' ifTrue: [ self createWidget: aCSNUIHeading6 for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIHeight: aCSNUIHeight [
	^ source name = 'height' ifTrue: [ self createAttributeFor: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIId: aCSNUIId [
	^ source name = 'id' ifTrue: [ self createAttributeFor: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIImage: aCSNUIImage [
	^ source name = 'img' ifTrue: [ self createWidget: aCSNUIImage for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputCheckbox: aCSNUIInputCheckbox [
	^ (source name = 'input' and: [ (source attributeAt: 'type' ifAbsent: [ ^ false ]) = 'checkbox' ]) ifTrue: [ self createWidget: aCSNUIInputCheckbox for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputColor: aCSNUIInputColor [
	^ (source name = 'input' and: [ (source attributeAt: 'type' ifAbsent: [ ^ false ]) = 'color' ]) ifTrue: [ self createWidget: aCSNUIInputColor for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputDate: aCSNUIInputDate [
	^ (source name = 'input' and: [ (source attributeAt: 'type' ifAbsent: [ ^ false ]) = 'date' ]) ifTrue: [ self createWidget: aCSNUIInputDate for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputDatetimeLocal: aCSNUIInputDatetimeLocal [
	^ (source name = 'input' and: [ (source attributeAt: 'type' ifAbsent: [ ^ false ]) = 'datetime-local' ]) ifTrue: [ self createWidget: aCSNUIInputDatetimeLocal for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputEmail: aCSNUIInputEmail [
	^ (source name = 'input' and: [ (source attributeAt: 'type' ifAbsent: [ ^ false ]) = 'email' ]) ifTrue: [ self createWidget: aCSNUIInputEmail for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputFile: aCSNUIInputFile [
	^ (source name = 'input' and: [ (source attributeAt: 'type' ifAbsent: [ ^ false ]) = 'file' ]) ifTrue: [ self createWidget: aCSNUIInputFile for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputMonth: aCSNUIInputMonth [
	^ (source name = 'input' and: [ (source attributeAt: 'type' ifAbsent: [ ^ false ]) = 'month' ]) ifTrue: [ self createWidget: aCSNUIInputMonth for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputNumber: aCSNUIInputNumber [
	^ (source name = 'input' and: [ (source attributeAt: 'type' ifAbsent: [ ^ false ]) = 'number' ]) ifTrue: [ self createWidget: aCSNUIInputNumber for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputPassword: aCSNUIInputPassword [
	^ (source name = 'input' and: [ (source attributeAt: 'type' ifAbsent: [ ^ false ]) = 'password' ]) ifTrue: [ self createWidget: aCSNUIInputPassword for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputRadio: aCSNUIInputRadio [
	^ (source name = 'input' and: [ (source attributeAt: 'type' ifAbsent: [ ^ false ]) = 'radio' ]) ifTrue: [ self createWidget: aCSNUIInputRadio for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputRange: aCSNUIInputRange [
	^ (source name = 'input' and: [ (source attributeAt: 'type' ifAbsent: [ ^ false ]) = 'range' ]) ifTrue: [ self createWidget: aCSNUIInputRange for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputReset: aCSNUIInputReset [
	^ (source name = 'input' and: [ (source attributeAt: 'type' ifAbsent: [ ^ false ]) = 'reset' ]) ifTrue: [ self createWidget: aCSNUIInputReset for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputSearch: aCSNUIInputSearch [
	^ (source name = 'input' and: [ (source attributeAt: 'type' ifAbsent: [ ^ false ]) = 'search' ]) ifTrue: [ self createWidget: aCSNUIInputSearch for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputSubmit: aCSNUIInputSubmit [
	^ (source name = 'input' and: [ (source attributeAt: 'type' ifAbsent: [ ^ false ]) = 'submit' ]) ifTrue: [ self createWidget: aCSNUIInputSubmit for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputTel: aCSNUIInputTel [
	^ (source name = 'input' and: [ (source attributeAt: 'type' ifAbsent: [ ^ false ]) = 'tel' ]) ifTrue: [ self createWidget: aCSNUIInputTel for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputText: aCSNUIInputText [
	^ (source name = 'input' and: [ (source attributeAt: 'type' ifAbsent: [ ^ false ]) = 'text' ]) ifTrue: [ self createWidget: aCSNUIInputText for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputTime: aCSNUIInputTime [
	^ (source name = 'input' and: [ (source attributeAt: 'type' ifAbsent: [ ^ false ]) = 'time' ]) ifTrue: [ self createWidget: aCSNUIInputTime for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputUrl: aCSNUIInputUrl [
	^ (source name = 'input' and: [ (source attributeAt: 'type' ifAbsent: [ ^ false ]) = 'url' ]) ifTrue: [ self createWidget: aCSNUIInputUrl for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputWeek: aCSNUIInputWeek [
	^ (source name = 'input' and: [ (source attributeAt: 'type' ifAbsent: [ ^ false ]) = 'week' ]) ifTrue: [ self createWidget: aCSNUIInputWeek for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUILink: aCSNUILink [
	^ source name = 'a' ifTrue: [ self createWidget: aCSNUILink for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIMax: aCSNUIMax [
	^ source name = 'max' ifTrue: [ self createAttributeFor: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIMaxlength: aCSNUIMaxlength [
	^ source name = 'maxlength' ifTrue: [ self createAttributeFor: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIMin: aCSNUIMin [
	^ source name = 'min' ifTrue: [ self createAttributeFor: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIName: aCSNUIName [
	^ source name = 'name' ifTrue: [ self createAttributeFor: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIOrderedList: aCSNUIOrderedList [
	^ source name = 'ol' ifTrue: [ self createWidget: aCSNUIOrderedList for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIParagraph: aCSNUIParagraph [
	^ source name = 'p' ifTrue: [ self createWidget: aCSNUIParagraph for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIPlaceholder: aCSNUIPlaceholder [
	^ source name = 'placeholder' ifTrue: [ self createAttributeFor: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIReadonly: aCSNUIReadonly [
	^ source name = 'readonly' ifTrue: [ self createAttributeFor: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIRequired: aCSNUIRequired [
	^ source name = 'required' ifTrue: [ self createAttributeFor: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUISelect: aCSNUISelect [
	^ source name = 'select' ifTrue: [ self createWidget: aCSNUISelect for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUISize: aCSNUISize [
	^ source name = 'size' ifTrue: [ self createAttributeFor: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUISrc: aCSNUISrc [
	^ source name = 'src' ifTrue: [ self createAttributeFor: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIStyle: aCSNUIStyle [
	^ source name = 'style' ifTrue: [ self createAttributeFor: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUITable: aCSNUITable [
	^ source name = 'table' ifTrue: [ self createWidget: aCSNUITable for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUITextarea: aCSNUITextarea [
	^ source name = 'textarea' ifTrue: [ self createWidget: aCSNUITextarea for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUITitle: aCSNUITitle [
	^ source name = 'title' ifTrue: [ self createAttributeFor: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIUnorderedList: aCSNUIUnorderedList [
	^ source name = 'ul' ifTrue: [ self createWidget: aCSNUIUnorderedList for: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIValue: aCSNUIValue [
	^ source name = 'value' ifTrue: [ self createAttributeFor: source ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIWidth: aCSNUIWidth [
	^ source name = 'width' ifTrue: [ self createAttributeFor: source ] ifFalse: [ nil ]
]
