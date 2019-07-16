Extension { #name : #CSNUITitle }

{ #category : #'*Casino-HTML-Importer' }
CSNUITitle class >> htmlCanHandle: anElement for: aWidget [
	^ anElement name = 'title'
]
