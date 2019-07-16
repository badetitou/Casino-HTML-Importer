Extension { #name : #CSNUIOrderedList }

{ #category : #'*Casino-HTML-Importer' }
CSNUIOrderedList class >> htmlCanHandle: anElement [
	^ anElement name = 'ol'
]
