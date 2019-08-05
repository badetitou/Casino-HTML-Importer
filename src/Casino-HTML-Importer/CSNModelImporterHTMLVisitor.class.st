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
CSNModelImporterHTMLVisitor >> createWidgetFor: widgetElement [
	^ (self create: self)
		source: widgetElement;
		name: widgetElement name;
		yourself
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIAlt: aCSNUIAlt [
	^ aCSNUIAlt name = 'alt' ifTrue: [ self createAttributeFor: aCSNUIAlt ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIButton: aCSNUIButton [
	^ (aCSNUIButton name = 'input' and: [ (aCSNUIButton attributeAt: 'type' ifAbsent: [ ^ false ]) = 'checkbox' ]) ifTrue: [ self createWidgetFor: aCSNUIButton ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUICanvas: aCSNUICanvas [
	^ (aCSNUICanvas name = 'canvas') ifTrue: [ self createWidgetFor: aCSNUICanvas ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIClass: aCSNUIClass [
	^ aCSNUIClass name = 'class' ifTrue: [ self createAttributeFor: aCSNUIClass ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIDisabled: aCSNUIDisabled [
	^ aCSNUIDisabled name = 'disabled' ifTrue: [ self createAttributeFor: aCSNUIDisabled ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIHeading1: aCSNUIHeading1 [
	^ (aCSNUIHeading1 name = 'h1') ifTrue: [ self createWidgetFor: aCSNUIHeading1 ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIHeading2: aCSNUIHeading2 [
	^ (aCSNUIHeading2 name = 'h2') ifTrue: [ self createWidgetFor: aCSNUIHeading2 ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIHeading3: aCSNUIHeading3 [
	^ (aCSNUIHeading3 name = 'h3') ifTrue: [ self createWidgetFor: aCSNUIHeading3 ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIHeading4: aCSNUIHeading4 [
	^ (aCSNUIHeading4 name = 'h4') ifTrue: [ self createWidgetFor: aCSNUIHeading4 ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIHeading5: aCSNUIHeading5 [
	^ (aCSNUIHeading5 name = 'h5') ifTrue: [ self createWidgetFor: aCSNUIHeading5 ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIHeading6: aCSNUIHeading6 [
	^ (aCSNUIHeading6 name = 'h6') ifTrue: [ self createWidgetFor: aCSNUIHeading6 ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIHeight: aCSNUIHeight [
	^ aCSNUIHeight name = 'height' ifTrue: [ self createAttributeFor: aCSNUIHeight ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIId: aCSNUIId [
	^ aCSNUIId name = 'id' ifTrue: [ self createAttributeFor: aCSNUIId ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIImage: aCSNUIImage [
	^ (aCSNUIImage name = 'img') ifTrue: [ self createWidgetFor: aCSNUIImage ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputCheckbox: aCSNUIInputCheckbox [
	^ (aCSNUIInputCheckbox name = 'input' and: [ (aCSNUIInputCheckbox attributeAt: 'type' ifAbsent: [ ^ false ]) = 'checkbox' ]) ifTrue: [ self createWidgetFor: aCSNUIInputCheckbox ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputColor: aCSNUIInputColor [
	^ (aCSNUIInputColor name = 'input' and: [ (aCSNUIInputColor attributeAt: 'type' ifAbsent: [ ^ false ]) = 'color' ]) ifTrue: [ self createWidgetFor: aCSNUIInputColor ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputDate: aCSNUIInputDate [
	^ (aCSNUIInputDate name = 'input' and: [ (aCSNUIInputDate attributeAt: 'type' ifAbsent: [ ^ false ]) = 'date' ]) ifTrue: [ self createWidgetFor: aCSNUIInputDate ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputDatetimeLocal: aCSNUIInputDatetimeLocal [
	^ (aCSNUIInputDatetimeLocal name = 'input' and: [ (aCSNUIInputDatetimeLocal attributeAt: 'type' ifAbsent: [ ^ false ]) = 'datetime-local' ]) ifTrue: [ self createWidgetFor: aCSNUIInputDatetimeLocal ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputFile: aCSNUIInputFile [
	^ (aCSNUIInputFile name = 'input' and: [ (aCSNUIInputFile attributeAt: 'type' ifAbsent: [ ^ false ]) = 'file' ]) ifTrue: [ self createWidgetFor: aCSNUIInputFile ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputMonth: aCSNUIInputMonth [
	^ (aCSNUIInputMonth name = 'input' and: [ (aCSNUIInputMonth attributeAt: 'type' ifAbsent: [ ^ false ]) = 'month' ]) ifTrue: [ self createWidgetFor: aCSNUIInputMonth ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputNumber: aCSNUIInputNumber [
	^ (aCSNUIInputNumber name = 'input' and: [ (aCSNUIInputNumber attributeAt: 'type' ifAbsent: [ ^ false ]) = 'number' ]) ifTrue: [ self createWidgetFor: aCSNUIInputNumber ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputRadio: aCSNUIInputRadio [
	^ (aCSNUIInputRadio name = 'input' and: [ (aCSNUIInputRadio attributeAt: 'type' ifAbsent: [ ^ false ]) = 'radio' ]) ifTrue: [ self createWidgetFor: aCSNUIInputRadio ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputRange: aCSNUIInputRange [
	^ (aCSNUIInputRange name = 'input' and: [ (aCSNUIInputRange attributeAt: 'type' ifAbsent: [ ^ false ]) = 'range' ]) ifTrue: [ self createWidgetFor: aCSNUIInputRange ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputReset: aCSNUIInputReset [
	^ (aCSNUIInputReset name = 'input' and: [ (aCSNUIInputReset attributeAt: 'type' ifAbsent: [ ^ false ]) = 'reset' ]) ifTrue: [ self createWidgetFor: aCSNUIInputReset ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIInputSearch: aCSNUIInputSearch [
	^ (aCSNUIInputSearch name = 'input' and: [ (aCSNUIInputSearch attributeAt: 'type' ifAbsent: [ ^ false ]) = 'search' ]) ifTrue: [ self createWidgetFor: aCSNUIInputSearch ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIMax: aCSNUIMax [
	^ aCSNUIMax name = 'max' ifTrue: [ self createAttributeFor: aCSNUIMax ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIMaxlength: aCSNUIMaxlength [
	^ aCSNUIMaxlength name = 'maxlength' ifTrue: [ self createAttributeFor: aCSNUIMaxlength ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIMin: aCSNUIMin [
	^ aCSNUIMin name = 'min' ifTrue: [ self createAttributeFor: aCSNUIMin ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIName: aCSNUIName [
	^ aCSNUIName name = 'name' ifTrue: [ self createAttributeFor: aCSNUIName ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIPlaceholder: aCSNUIPlaceholder [
	^ aCSNUIPlaceholder name = 'placeholder' ifTrue: [ self createAttributeFor: aCSNUIPlaceholder ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIReadonly: aCSNUIReadonly [
	^ aCSNUIReadonly name = 'readonly' ifTrue: [ self createAttributeFor: aCSNUIReadonly ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIRequired: aCSNUIRequired [
	^ aCSNUIRequired name = 'required' ifTrue: [ self createAttributeFor: aCSNUIRequired ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUISize: aCSNUISize [
	^ aCSNUISize name = 'size' ifTrue: [ self createAttributeFor: aCSNUISize ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUISrc: aCSNUISrc [
	^ aCSNUISrc name = 'src' ifTrue: [ self createAttributeFor: aCSNUISrc ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIStyle: aCSNUIStyle [
	^ aCSNUIStyle name = 'style' ifTrue: [ self createAttributeFor: aCSNUIStyle ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUITitle: aCSNUITitle [
	^ aCSNUITitle name = 'title' ifTrue: [ self createAttributeFor: aCSNUITitle ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIValue: aCSNUIValue [
	^ aCSNUIValue name = 'value' ifTrue: [ self createAttributeFor: aCSNUIValue ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIWidth: aCSNUIWidth [
	^ aCSNUIWidth name = 'width' ifTrue: [ self createAttributeFor: aCSNUIWidth ] ifFalse: [ nil ]
]
