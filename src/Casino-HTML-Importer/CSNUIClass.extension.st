Extension { #name : #CSNUIClass }

{ #category : #'*Casino-HTML-Importer' }
CSNUIClass class >> htmlCanHandle: anElement for: aWidget [
	^ anElement name = 'class'
]
