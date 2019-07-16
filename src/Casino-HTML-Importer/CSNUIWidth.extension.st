Extension { #name : #CSNUIWidth }

{ #category : #'*Casino-HTML-Importer' }
CSNUIWidth class >> htmlCanHandle: anElement for: aWidget [
	^ anElement name = 'width'
]
