Extension { #name : #CSNUIDisabled }

{ #category : #'*Casino-HTML-Importer' }
CSNUIDisabled class >> htmlCanHandle: anElement for: aWidget [
	^ anElement name = 'disabled'
]
