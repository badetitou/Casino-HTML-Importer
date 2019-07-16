Extension { #name : #CSNUICanvas }

{ #category : #'*Casino-HTML-Importer' }
CSNUICanvas class >> htmlCanHandle: anElement [
	^ anElement name = 'canvas'
]
