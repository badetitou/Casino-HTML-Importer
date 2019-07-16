Extension { #name : #CSNUIId }

{ #category : #'*Casino-HTML-Importer' }
CSNUIId class >> htmlCanHandle: anElement for: aWidget [
	^ anElement name = 'id'
]
