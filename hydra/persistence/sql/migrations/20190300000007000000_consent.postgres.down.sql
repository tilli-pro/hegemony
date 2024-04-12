ALTER TABLE hydra_oauth2_consent_request_handled DROP CONSTRAINT hydra_oauth2_consent_request_handled_challenge_fk;
ALTER TABLE hydra_oauth2_authentication_request_handled DROP CONSTRAINT hydra_oauth2_authentication_request_handled_challenge_fk;

ALTER TABLE hydra_oauth2_consent_request DROP CONSTRAINT hydra_oauth2_consent_request_client_id_fk;
ALTER TABLE hydra_oauth2_authentication_request DROP CONSTRAINT hydra_oauth2_authentication_request_client_id_fk;
ALTER TABLE hydra_oauth2_obfuscated_authentication_session DROP CONSTRAINT hydra_oauth2_obfuscated_authentication_session_client_id_fk;

ALTER TABLE hydra_oauth2_consent_request DROP CONSTRAINT hydra_oauth2_consent_request_login_session_id_fk;
ALTER TABLE hydra_oauth2_authentication_request DROP CONSTRAINT hydra_oauth2_authentication_request_login_session_id_fk;
ALTER TABLE hydra_oauth2_consent_request DROP CONSTRAINT hydra_oauth2_consent_request_login_challenge_fk;

-- Revert defaults
ALTER TABLE hydra_oauth2_authentication_request ALTER COLUMN login_session_id SET DEFAULT '';
ALTER TABLE hydra_oauth2_consent_request ALTER COLUMN login_session_id SET DEFAULT '';
ALTER TABLE hydra_oauth2_consent_request ALTER COLUMN login_challenge SET DEFAULT '';