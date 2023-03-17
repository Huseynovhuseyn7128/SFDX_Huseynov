trigger ContactTrigger2 on Contact (before insert) {
    System.debug('Trigger after insert event');

}