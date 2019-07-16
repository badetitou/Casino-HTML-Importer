Extension { #name : #CSNUIUnorderedList }

{ #category : #'*Casino-HTML-Importer' }
CSNUIUnorderedList class >> htmlCanHandle: anElement [
	^ anElement name = 'ul'
]
