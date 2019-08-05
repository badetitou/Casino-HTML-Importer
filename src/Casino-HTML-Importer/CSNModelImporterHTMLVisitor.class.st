Class {
	#name : #CSNModelImporterHTMLVisitor,
	#superclass : #CSNModelImporterVisitor,
	#category : #'Casino-HTML-Importer'
}

{ #category : #'instance creation' }
CSNModelImporterHTMLVisitor >> createAttributeFor: aCSNUIAlt [
	^ (self create: self)
		name: aCSNUIAlt name;
		attributeValue: aCSNUIAlt value asLowercase;
		widget: aCSNUIAlt;
		yourself
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIAlt: aCSNUIAlt [
	^ aCSNUIAlt name = 'alt' ifTrue: [ self createAttributeFor: aCSNUIAlt ] ifFalse: [ nil ]
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
CSNModelImporterHTMLVisitor >> visitCSNUIHeight: aCSNUIHeight [
	^ aCSNUIHeight name = 'height' ifTrue: [ self createAttributeFor: aCSNUIHeight ] ifFalse: [ nil ]
]

{ #category : #visitor }
CSNModelImporterHTMLVisitor >> visitCSNUIId: aCSNUIId [
	^ aCSNUIId name = 'id' ifTrue: [ self createAttributeFor: aCSNUIId ] ifFalse: [ nil ]
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
