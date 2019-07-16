Extension { #name : #CSNUIHeight }

{ #category : #'*Casino-HTML-Importer' }
CSNUIHeight class >> htmlCanHandle: anElement for: aWidget [
	^ anElement name = 'height'
]
