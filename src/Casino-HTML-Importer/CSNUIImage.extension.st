Extension { #name : #CSNUIImage }

{ #category : #'*Casino-HTML-Importer' }
CSNUIImage class >> htmlCanHandle: anElement [
	^ anElement name = 'img'
]
