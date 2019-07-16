Extension { #name : #CSNUIName }

{ #category : #'*Casino-HTML-Importer' }
CSNUIName class >> htmlCanHandle: anElement for: aWidget [
	^ anElement name = 'name'
]
