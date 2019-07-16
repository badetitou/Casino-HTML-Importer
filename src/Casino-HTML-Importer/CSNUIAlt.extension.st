Extension { #name : #CSNUIAlt }

{ #category : #'*Casino-HTML-Importer' }
CSNUIAlt class >> htmlCanHandle: anElement for: aWidget [
	^ anElement name = 'alt'
]
