Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OH1YJPGgpWmuCAAAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Mon, 02 Mar 2026 15:38:41 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B68C11DAFFC
	for <lists+jfs-discussion@lfdr.de>; Mon, 02 Mar 2026 15:38:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:References:MIME-Version:Message-ID:Date:To:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	bh=NnRx6Tjos4RmGEU/iNuOLiJhiuP6fGdKNMQfk1dIdcI=; b=WNs8EmJF+73IvUcp4WEfEk3ygE
	BkFA+K9oJRKXgGcCmACs6WFUlidCjFpTrT+4Z2v9iRhe3gBYSj9Y+SGWwkSXusTbcRe0A/oHk56tn
	DfLv3zaFQL2tBgzlYmZaq5/BHhrTHowvaD2Ic9zGgtHMlyp3qGZluzszW0/13PPvsbqg=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vx4PE-0007ZO-5e;
	Mon, 02 Mar 2026 14:37:56 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <joaommp@yahoo.com>) id 1vwtRr-00041i-Lg
 for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Mar 2026 02:55:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cGZ9bbHctoLUplhJoIOzxdqQIUCvdYW1u8/NWTnKC7g=; b=j3pjfM4WZ8cg51GWHYhRhfvjAU
 OisVRCOv4GILwLm9bm113oPvrcpNwLdO7bAFt1W5v3IdtCvqW2X/IZ5FbjsEn5ngE9OMoSMkAM3cK
 riC67OEDZq5ElXKG1MD/TBZQgo2rN+to3XniD0OAhf/HnuQpL2Zjtl4DnSnt+0oL+i24=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID
 :Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cGZ9bbHctoLUplhJoIOzxdqQIUCvdYW1u8/NWTnKC7g=; b=K
 iYOg/a+5LNeu2hyBuf65FPeNKLCdVO2xM0xCR9pXkt7MI9yOK7inU9kfh8wfm9ctB1gokUBdMZtBh
 O+cbdVQfAVg/KtM9brS7rFrB2kKGleqU2yX6qS0m8rpZQ/Xv94lAkh8KpGT+FL2CvM5KynLBulIa7
 S2ywOMcDp2PWq8ZM=;
Received: from sonic306-3.consmr.mail.bf2.yahoo.com ([74.6.132.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vwtRs-0001sq-0a for jfs-discussion@lists.sourceforge.net;
 Mon, 02 Mar 2026 02:55:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1772420150; bh=cGZ9bbHctoLUplhJoIOzxdqQIUCvdYW1u8/NWTnKC7g=;
 h=From:To:Cc:Subject:Date:References:From:Subject:Reply-To;
 b=iJwVo6R5UxAUBviMZVnbRi6JBmz9XBU66iTX/ZSwHNfSIo0ZxH6/Baq1F5hUaTWX/24sPY9Ulg7z/zAFUTxIRyFvwjV4zqQzF2tkfKfsaAuVvXbOXxGPgOEFpAVeWxv3HdxRaPW7HeG/Y9AaF/+N5/BkzY2TOFRumN+sefURQVm5U3680sD5Pkkt/RiMEfwBG9TNDxy0QpR0jVAHTe+cyDl05L0F4GLJEZ3Cn0TC5q1d5HI4gAfV67/eos9BqIug7vtD/DJ7PZTT6SFjlMwBrz6xNpZOeD+ypgxdpaOWwRzNc5tqFaGP93xWWZk4TwIZsoicO9nwLNyOVfw5DJlI8g==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1772420150; bh=WHldK668j+K4EZYypuIAxNidopfD4x22UswW4OzQyZc=;
 h=X-Sonic-MF:From:To:Subject:Date:From:Subject;
 b=LK3iNQQsRlFTh5f6nRhWDAHMS2PZ9kIPfyIbYh+AvptxvbaColUd3C9pyAcC9pHMUyF2x0hvfZxi1pCGuNsg2BIqb1Wm/mpVXQRS01gOmwYbpwPu7pS61n5I9yvgIOTZGnQRAnqkpBkfqxJvJFJ2cejaCF1NGnBhgYKpoxBLqRivGGcKbcT1sba9uKzESI+z3dL1+nDhpTQ1NN+bZD8xMMKtToxkCbDViNgWpk9zqdMFiBft/wsXqEBviqJnV1jH5dBm6eC4Vq0qD+D8Hpvy0jHGpiDymAzIsehnC+3M+t8BwhDTTptUlGkJQ7Vyx6bZaGvolqtCTueVY5V6A7qsBQ==
X-YMail-OSG: L9pbDMoVM1l3ZRGy1FOSR8LVA0ST.Zz76AmEV6eYhJQokwgvnjfjNVX2AcYVqWs
 m708Ycz_CdRhg3IgGFwP4Rufnpkrv8RGImu0aBgJf2KMoztOceOk2eayR5ZrGG9VFCRF_aqi77wZ
 fGPbV7ba7X0DBZXyx.gteNvWRqL1YFaJp6l7C4A1bhG4u70xRNNcLgBW.CtTGec_jdpXF6FnOghf
 xYQyMAGQ6ikAmSt9wM8jTJO7RiRnj14NK.FmoMjy9JFgBqqx7cOFhTcTMc.WDqTYN.VlbUqYxAFs
 s600zy2tFfJKdS3q0oiqsxTDgt31CGonh8Xg2Dbyae1sTKIGgLRZPMncU.RRNCWTvWlF1FC.41UH
 uLUqqxxYJ3O3fxG0f_FlMwWBiZ8cOIZLdcQhWWOIKpvq4RUarViyU1MX6zLQch3YEYvuFLYTvV_l
 OpavvlAFaxRhbkRNCWH8p2A81ymRHn_RrYdhAzTbCfqu3duLjXIwVMBOyIvWJHopVo_djvkMwUUM
 TYFMuvA7plBRXnVfhTMLawH7TzJbeA4FQQem1R_qUZRWOpafUG6Ty85LPc.s.V1Q0uQ4F5AgRY3z
 jsjfvtZBVAfr_9ITDBChRri2x2emCyHVpqkM1YOhvNUMgZ6idgKvEDoEDMaz42QMXwUmRX6rT2xU
 YsKU5pVXjCq03HyhQi0NJKj5o75d5OHVdL3vKLNSWZP9K62bwIAskfrY0ja4gqKQlwcbYcVSx8yx
 at5briCrtyESDQ3teKaByB9blAUndmIYUnf6S90Auzq3pDOzsbMnW0YY6tEHoaqAvTuySPlo8Pbk
 dd2KeV1WStsA99HvPbQf.3fL9LT_knB7ICIs3ZmQIJDHRnLXb6tgOzG_nTbvW8_SOTmKX3kGSy4N
 wFHFPtJ8oAVQ6QK.7pKcHCJIrdT_tGS.znonu_NQjiZUjmO7y3NBh6pL3nRJHzLOcLYYXwRyO8aJ
 MeXYvfmDEUu_JI.bVATtf8rkQ0xBV34ykBHwaQF2bZyLSCieXZipn7Yhn_UViDjYbBlnI9ZGDPVh
 oYsAL4z4OAHtBZmfcaemfmCHcgpnFmyzDqlFCkwtUB8Cyatxhw4dbx_K5DbpVy7z7hIgaAoEr_sa
 wGk6uIP4O2TcjrXWzeg9Yx8e9FjFIx6SYBU3D0NVDTSYAcxXI.WQRDH2xRzrmQ_.lRLNtzXNb9ZZ
 OIxmRD_LmBv1V5KhZeR9hxL1kAzm4DEwFuzdrEqwxL9.dt.3.Gx6fBtZwXoO3i3ltfA9klBYoYye
 U7IzVml_fXYqECMf7GQx1jB9RSq6sMzpbG0ETAnbYbvBzy6UqMFaq5dFP5XrchupqMZ.pD8LpsTF
 515uD4HjUsGKAsSogv08vyHSar29yWWoleCNFh5zdEM3Y4ww3Q3MKQecK2OtqiGZd89r5bUhWPUZ
 st.f8.zJA7kdkiY4kIxNf0Rm6gq.kbVW3ROaL.khhR4fKX.tN5p7PUvrPifcBSSBSpSrq5esSUG.
 m8fCff5YK9X7SpZROuYsuUHRvmyViYraPayqkK_hJnA5tb7dXnahrvsgbghYNSt8xqBKxbYciIPF
 kvmNs6W_Bwd7ALAUazfHmIS8ZPcWk6CBIlXbM5I6lZpiuIqeNoz54nu4lfKAnsLDtjFTlwUSZ8a8
 NtyuYWnNOU1YJ9FykIVguYmFQEiLpcZ3iQEho_T61p6Vxfh7tRG8WI9JM59jkcW_uVBem5cMJbkC
 YbvK02EMWBPomb58.4Bjt4ovbbPF35wZJID9UtptOW9mRxZlo9kAbvmRiPivuIDu9xMbQFXUpuJD
 dw0REAyIo_N.617frbGo6LywZ5Hu3Vt4PJoKVAQRkEe9WTMlD50L1fmQCeqYUIJfMBs5IKlgSN_e
 P4EDBS3JH_3VrY7_VETR4PJkKbXyDdbSDU644OkNugVdtJfDr6y6GL1UbT5B5Jw02VkD99sFGpjb
 mHvKncbEMAcs_5uH8hsdbSdxs7F9tz7NDpKfNlZLXl3smonu1BiUhJbAoNAPXYn3dZMLWG.vJO4H
 b3FHHttEFB9C_7zjPBtjEeHmG0uPD3RP5X4hOZJC1HUStUr_zqTQMLLAGMWL9jvA_9D6Ibts24Nu
 nk_UOcQ6g6UBDmBA2c2GPUDilD4laqk2YhK4WAERI7_sqfutmqSzE0XQ4nygC9E.m_XujAj1SNF8
 8t49YlokQ4dUTkDKyPlbVI33bEivILaZp7Ly5c_y.uIX1MZMHYHGc1ki57jEAvnY8bvbhV.OvjaV
 XPd_bwvAcDnDbWiVJfMXtT.XNs75dZJ82Vv4jWUn_
X-Sonic-MF: <joaommp@yahoo.com>
X-Sonic-ID: c4de30e0-def7-4cb9-9923-fb8d10069e28
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic306.consmr.mail.bf2.yahoo.com with HTTP; Mon, 2 Mar 2026 02:55:50 +0000
Received: by hermes--production-bf1-697f88457-q5phm (Yahoo Inc. Hermes SMTP
 Server) with ESMTPA ID 17a6312171fd4e0738815c47c44f5cbb; 
 Mon, 02 Mar 2026 02:55:47 +0000 (UTC)
To: shaggy@kernel.org,
	joaommp@yahoo.com,
	liaoyuanhong@vivo.com
Date: Mon,  2 Mar 2026 02:55:39 +0000
Message-ID: <20260302025539.299524-1-joaommp@yahoo.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
References: <20260302025539.299524-1-joaommp.ref@yahoo.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The filesystem UUID was only being loaded into super_block
 sb when an external journal device was in use. When mounting without an
 external
 journal, the UUID remained unset, which prevented the comput [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [joaommp(at)yahoo.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [74.6.132.42 listed in wl.mailspike.net]
X-Headers-End: 1vwtRs-0001sq-0a
X-Mailman-Approved-At: Mon, 02 Mar 2026 14:37:55 +0000
Subject: [Jfs-discussion] [PATCH] JFS: always load filesystem UUID during
 mount
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
From: =?UTF-8?q?Jo=C3=A3o=20Paredes?= via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: =?UTF-8?q?Jo=C3=A3o=20Paredes?= <joaommp@yahoo.com>
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: B68C11DAFFC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-4.51 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	FORGED_MSGID_YAHOO(2.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:shaggy@kernel.org,m:joaommp@yahoo.com,m:liaoyuanhong@vivo.com,m:jfs-discussion@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,yahoo.com,vivo.com];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FREEMAIL_REPLYTO(0.00)[yahoo.com];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,yahoo.com:s=s2048];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,yahoo.com:-];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[jfs-discussion];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[joaommp@yahoo.com]
X-Rspamd-Action: no action

VGhlIGZpbGVzeXN0ZW0gVVVJRCB3YXMgb25seSBiZWluZyBsb2FkZWQgaW50byBzdXBlcl9ibG9j
ayBzYiB3aGVuIGFuCmV4dGVybmFsIGpvdXJuYWwgZGV2aWNlIHdhcyBpbiB1c2UuIFdoZW4gbW91
bnRpbmcgd2l0aG91dCBhbiBleHRlcm5hbApqb3VybmFsLCB0aGUgVVVJRCByZW1haW5lZCB1bnNl
dCwgd2hpY2ggcHJldmVudGVkIHRoZSBjb21wdXRhdGlvbiBvZgphIGZpbGVzeXN0ZW0gSUQgKGZz
aWQpLCB3aGljaCBjb3VsZCBiZSBjb25maXJtZWQgdmlhIGBzdGF0IC1mIC1jICIlaSJgCmFuZCB0
aHVzIHVzZXIgc3BhY2UgY291bGQgbm90IHVzZSBmYW5vdGlmeSBjb3JyZWN0bHkuCgpBIG1pc3Np
bmcgZmlsZXN5c3RlbSBJRCBjYXVzZXMgZmFub3RpZnkgdG8gcmV0dXJuIEVOT0RFViB3aGVuIG1h
cmtpbmcKdGhlIGZpbGVzeXN0ZW0gZm9yIGV2ZW50cyBsaWtlIEZBTl9DUkVBVEUsIEZBTl9ERUxF
VEUsIEZBTl9NT1ZFRF9UTywKYW5kIEZBTl9NT1ZFRF9GUk9NLiBBcyBhIHJlc3VsdCwgYXBwbGlj
YXRpb25zIHJlbHlpbmcgb24gZmFub3RpZnkKY291bGQgbm90IG1vbml0b3IgdGhlc2UgZXZlbnRz
IG9uIEpGUyBmaWxlc3lzdGVtcyB3aXRob3V0IGFuIGV4dGVybmFsCmpvdXJuYWwuCgpNb3ZlZCB0
aGUgVVVJRCBpbml0aWFsaXphdGlvbiBzbyBpdCBpcyBhbHdheXMgcGVyZm9ybWVkIGR1cmluZyBt
b3VudCwKZW5zdXJpbmcgdGhlIHN1cGVyYmxvY2sgVVVJRCBpcyBjb25zaXN0ZW50bHkgYXZhaWxh
YmxlLgoKU2lnbmVkLW9mZi1ieTogSm/Do28gUGFyZWRlcyA8am9hb21tcEB5YWhvby5jb20+Ci0t
LQogZnMvamZzL2pmc19tb3VudC5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9mcy9qZnMvamZzX21vdW50LmMgYi9m
cy9qZnMvamZzX21vdW50LmMKaW5kZXggNTJlNmI1OGM1ZGJkLi5kYWM4MjJmMTUwNzAgMTAwNjQ0
Ci0tLSBhL2ZzL2pmcy9qZnNfbW91bnQuYworKysgYi9mcy9qZnMvamZzX21vdW50LmMKQEAgLTM3
OCwxMSArMzc4LDEyIEBAIHN0YXRpYyBpbnQgY2hrU3VwZXIoc3RydWN0IHN1cGVyX2Jsb2NrICpz
YikKIAlzYmktPm5icGVycGFnZSA9IFBTSVpFID4+IHNiaS0+bDJic2l6ZTsKIAlzYmktPmwybmJw
ZXJwYWdlID0gTDJQU0laRSAtIHNiaS0+bDJic2l6ZTsKIAlzYmktPmwybmlwZXJibGsgPSBzYmkt
PmwyYnNpemUgLSBMMkRJU0laRTsKKwl1dWlkX2NvcHkoJnNiaS0+dXVpZCwgJmpfc2ItPnNfdXVp
ZCk7CisKIAlpZiAoc2JpLT5tbnRmbGFnICYgSkZTX0lOTElORUxPRykKIAkJc2JpLT5sb2dweGQg
PSBqX3NiLT5zX2xvZ3B4ZDsKIAllbHNlIHsKIAkJc2JpLT5sb2dkZXYgPSBuZXdfZGVjb2RlX2Rl
dihsZTMyX3RvX2NwdShqX3NiLT5zX2xvZ2RldikpOwotCQl1dWlkX2NvcHkoJnNiaS0+dXVpZCwg
Jmpfc2ItPnNfdXVpZCk7CiAJCXV1aWRfY29weSgmc2JpLT5sb2d1dWlkLCAmal9zYi0+c19sb2d1
dWlkKTsKIAl9CiAJc2JpLT5mc2NrcHhkID0gal9zYi0+c19mc2NrcHhkOwotLSAKMi41My4wCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNj
dXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Np
b24K
