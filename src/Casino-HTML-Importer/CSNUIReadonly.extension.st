Extension { #name : #CSNUIReadonly }

{ #category : #'*Casino-HTML-Importer' }
CSNUIReadonly class >> htmlCanHandle: anElement for: aWidget [
	^ anElement name = 'readonly'
]
