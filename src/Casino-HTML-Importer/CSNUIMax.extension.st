Extension { #name : #CSNUIMax }

{ #category : #'*Casino-HTML-Importer' }
CSNUIMax class >> htmlCanHandle: anElement for: aWidget [
	^ anElement name = 'max'
]
