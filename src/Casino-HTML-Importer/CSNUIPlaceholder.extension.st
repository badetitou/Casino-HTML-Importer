Extension { #name : #CSNUIPlaceholder }

{ #category : #'*Casino-HTML-Importer' }
CSNUIPlaceholder class >> htmlCanHandle: anElement for: aWidget [
	^ anElement name = 'placeholder'
]
