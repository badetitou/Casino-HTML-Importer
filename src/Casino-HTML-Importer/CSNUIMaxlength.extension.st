Extension { #name : #CSNUIMaxlength }

{ #category : #'*Casino-HTML-Importer' }
CSNUIMaxlength class >> htmlCanHandle: anElement for: aWidget [
	^ anElement name = 'maxlength'
]
