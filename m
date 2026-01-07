Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF50CFE7A2
	for <lists+jfs-discussion@lfdr.de>; Wed, 07 Jan 2026 16:07:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ay+ZV0AQ511sZgfsa6/3lzCNe3zhRRaN+znXKFNaBKk=; b=QqPWDesZ+GKGqQChtSWS97ua+g
	2PaKMD3gCCUb5hB/1RL3Vvgds/q+7003/+w0I8uX3OOMg5ZUacCrovCaHqKiH1cEefE7SlaOpdm0w
	keTDFGIm1r2XgL3byTc0i4g/OBXN0Pys2UitrVwlIkDQ4FTLsx1b/xZP4fsqXm/R2b68=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vdV7e-0001ox-Kd;
	Wed, 07 Jan 2026 15:06:55 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mjguzik@gmail.com>) id 1vdV6L-0001h3-NY
 for jfs-discussion@lists.sourceforge.net;
 Wed, 07 Jan 2026 15:05:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8VKA2k4TAi/PruQ5v8EVVWKfLEydGdRE1MHXVZIlbOc=; b=bGRwPzXA9oUvL5hP4jZPBSwxWO
 TIQCsGQjKr2waUIvos0o4HH6LYc0OgHDGvSnqDe2N3cE78xt54xzxhi2nNNZ1aPr6PcRxoyCnBzfR
 0Wa5j5tyr4Qx3j3oy5HvZTQANSbIQy4Avs0uRAE83iefZCSPIvq5zyd3VZIEq0bP4R2A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8VKA2k4TAi/PruQ5v8EVVWKfLEydGdRE1MHXVZIlbOc=; b=e5vaGpfeyoUqvjwh3ELP5UThF2
 WLjTJh4y9U1aSdSI7p1WDuVreGyDOsmCUiVlCMm0q9oLF0+XTx508Cvw9OOoNmC67+gsDLEzzda/i
 9NAwEh+/sP2YwRuy/30FqImv+4eTr0Sib0ko8rfKFf+ej0I0ummOJ0p+Ml1DULjEe794=;
Received: from mail-ed1-f51.google.com ([209.85.208.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vdV6I-0004yn-Ek for jfs-discussion@lists.sourceforge.net;
 Wed, 07 Jan 2026 15:05:31 +0000
Received: by mail-ed1-f51.google.com with SMTP id
 4fb4d7f45d1cf-64d30dc4ed7so4151832a12.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 07 Jan 2026 07:05:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1767798319; x=1768403119; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8VKA2k4TAi/PruQ5v8EVVWKfLEydGdRE1MHXVZIlbOc=;
 b=Q1sJWDRIUtcGXFtiAJ7CO+crgHvdaUforI6xHIMNMUpuJyESuUMdAso6FsEHLoI5Rg
 znnDj4pHutmoopPMouxUbNEBRBYe5XMYZ9/Amnf2Tmg7j5UBunz2TaPn2qJ6U53Yit/r
 +F6m2QOZy7DhqFB3oWD7ket2akcCP1x/gHQyqtQfHqakxZ50A1B+j/U/3LKyNstidEaq
 aw3H0kEdvEjWIQYsDSLsllY0fMHGcVR2ZpCt4PAaNVwesW/1MG5vsCYJFGzhJTm20H4e
 lias+UQr2YUZZWe8hWWh/Wv42Ir843JYdyHJSeVwVzmaORPKaEPy6j1UeFHoxiSX0N/D
 Htkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767798319; x=1768403119;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=8VKA2k4TAi/PruQ5v8EVVWKfLEydGdRE1MHXVZIlbOc=;
 b=qUxvTWXQmaxlc61hZlVYuim8893WEOS1jJtXxnM6uMmPMgfJO1W+eIkMyC45cBxqMV
 BsFUmOhnx7bQUTgmLOMw3BzE0K2fPB7aPdUsmef44pynVymXBKynEKne46373mOfi1zy
 z6kBZANmB8RfFZtrj3yQBhrlA67CvsGpKY2aHxZxVgoiTs2GPwSl49R2ldHtJmDmbkVI
 nQ+/mx+0XTdQ/bh9TnpmlUJXxAynq8k3atBS8BrTQdTV1W/EPBKieKh2c4REk44UXBaa
 9LHsfw86Rur+mB/fvmLPXfweJwgbLuMFwx3mXfG9+TZ2ZM7p5XjtqulFdYlPrpITor3m
 r0nA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU/PBrWTcaDQrRqOasgteqKKS1kWITVtSzBKYy+acmJHU39/krY1UsR0uHJ374o4ryn0ShK5tXhMGFBLSHwAQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Ywe+zvKSxfXR3dTv2bgMD76cmVLN8FDSXSFaN25uBG3DMFC51vG
 8YL0FbSU+04gafML7L4/KLtvwtRzgeUAGjCv/EKAp17WtLPV5dVZS2kZs8a2ZTyr8DaNeHkbJ6l
 nn1Uc8uQ+rF7XeSozHrJPGscJuC1lOjh17A==
X-Gm-Gg: AY/fxX4C9sIz7cVRDc2C2PfJV1+v2WesVTSX/o6SrgEZOtefADYM/0AUTiixHmgWfGN
 pRV0QeAr6Z9uuMU/F30Ajaf0LVUJFr+h1uOsyRuFjf8YR7yf/QFTA87g52mZksonGtPYXj1Uq0i
 SvmY0QyyYPzkMATfBDDg1LBXo59ImRmj7TpZfolQaqyepcax6zV3PyFfr0x3c3Y3rbUJ0xxGbBD
 ao92pSO8GR1A95aRSF7lk8SKCrmNo3faFJeb+KtJP6tBaimw62NgXh8TXLBtCdlaHzkIqelARVi
 HgSIZ25ynJd74Z2M7aZppI6i
X-Google-Smtp-Source: AGHT+IEYPCItVP18gJyiC6huUadmBpCyJdQsMYnN64bYxRyDxrW51lj98bBR88bjEOUi3cRWoN+pmyJLyM6tVBaGOLY=
X-Received: by 2002:a05:6402:2549:b0:64d:540e:c68e with SMTP id
 4fb4d7f45d1cf-65097e6e03emr2514495a12.26.1767798318615; Wed, 07 Jan 2026
 07:05:18 -0800 (PST)
MIME-Version: 1.0
References: <00000000000051d14405fadad8cc@google.com>
 <695e743e.050a0220.1c677c.036a.GAE@google.com>
In-Reply-To: <695e743e.050a0220.1c677c.036a.GAE@google.com>
Date: Wed, 7 Jan 2026 16:05:06 +0100
X-Gm-Features: AQt7F2ooQ4Rwqgo6fiCzY0yGLSJ0RbAhIBUySnvDnGFLhTl8lxZv74ynRZW1Frw
Message-ID: <CAGudoHFNST2hJFqMGDMC=jOfs9qBrLNO1uxwS_deRfintFCKmg@mail.gmail.com>
To: syzbot <syzbot+dcc068159182a4c31ca3@syzkaller.appspotmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jan 7,
 2026 at 3:57 PM syzbot wrote: > > syzbot suspects
 this issue was fixed by commit: > > commit
 dca3aa666fbd71118905d88bb1c353881002b647
 > Author: Mateusz Guzik > Date: Sun Nov 9 12:19 [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [mjguzik(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.51 listed in wl.mailspike.net]
X-Headers-End: 1vdV6I-0004yn-Ek
X-Mailman-Approved-At: Wed, 07 Jan 2026 15:06:54 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] KASAN: user-memory-access
 Write in __destroy_inode
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
From: Mateusz Guzik via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Mateusz Guzik <mjguzik@gmail.com>
Cc: shaggy@kernel.org, brauner@kernel.org, jack@suse.cz,
 lvc-project@linuxtesting.org, dmantipov@yandex.ru,
 syzkaller-bugs@googlegroups.com, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, viro@zeniv.linux.org.uk,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gV2VkLCBKYW4gNywgMjAyNiBhdCAzOjU34oCvUE0gc3l6Ym90CjxzeXpib3QrZGNjMDY4MTU5
MTgyYTRjMzFjYTNAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNvbT4gd3JvdGU6Cj4KPiBzeXpib3Qg
c3VzcGVjdHMgdGhpcyBpc3N1ZSB3YXMgZml4ZWQgYnkgY29tbWl0Ogo+Cj4gY29tbWl0IGRjYTNh
YTY2NmZiZDcxMTE4OTA1ZDg4YmIxYzM1Mzg4MTAwMmI2NDcKPiBBdXRob3I6IE1hdGV1c3ogR3V6
aWsgPG1qZ3V6aWtAZ21haWwuY29tPgo+IERhdGU6ICAgU3VuIE5vdiA5IDEyOjE5OjMxIDIwMjUg
KzAwMDAKPgo+ICAgICBmczogbW92ZSBpbm9kZSBmaWVsZHMgdXNlZCBkdXJpbmcgZmFzdCBwYXRo
IGxvb2t1cCBjbG9zZXIgdG9nZXRoZXIKPgoKSSBkb24ndCBrbm93IHdoYXQgdGhlIGJ1ZyBpcywg
YXQgYmVzdCB0aGlzIHBhdGNoIGhhcyBhbiB1bmludGVuZGVkCnNpZGUtZWZmZWN0IG9mIG5ldXRl
cmluZyB0aGUgcmVwcm9kdWNlci4KCj4gYmlzZWN0aW9uIGxvZzogIGh0dHBzOi8vc3l6a2FsbGVy
LmFwcHNwb3QuY29tL3gvYmlzZWN0LnR4dD94PTE0ODAwMTlhNTgwMDAwCj4gc3RhcnQgY29tbWl0
OiAgIDYxNDZhMGYxZGZhZSBMaW51eCA2LjE4LXJjNAo+IGdpdCB0cmVlOiAgICAgICB1cHN0cmVh
bQo+IGtlcm5lbCBjb25maWc6ICBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94Ly5jb25m
aWc/eD1lNDZiOGExYzY0NTQ2NWE5Cj4gZGFzaGJvYXJkIGxpbms6IGh0dHBzOi8vc3l6a2FsbGVy
LmFwcHNwb3QuY29tL2J1Zz9leHRpZD1kY2MwNjgxNTkxODJhNGMzMWNhMwo+IHN5eiByZXBybzog
ICAgICBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94L3JlcHJvLnN5ej94PTE1ZWY0NTMy
NTgwMDAwCj4gQyByZXByb2R1Y2VyOiAgIGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gv
cmVwcm8uYz94PTE3OWMxZTE0NTgwMDAwCj4KPiBJZiB0aGUgcmVzdWx0IGxvb2tzIGNvcnJlY3Qs
IHBsZWFzZSBtYXJrIHRoZSBpc3N1ZSBhcyBmaXhlZCBieSByZXBseWluZyB3aXRoOgo+Cj4gI3N5
eiBmaXg6IGZzOiBtb3ZlIGlub2RlIGZpZWxkcyB1c2VkIGR1cmluZyBmYXN0IHBhdGggbG9va3Vw
IGNsb3NlciB0b2dldGhlcgo+Cj4gRm9yIGluZm9ybWF0aW9uIGFib3V0IGJpc2VjdGlvbiBwcm9j
ZXNzIHNlZTogaHR0cHM6Ly9nb28uZ2wvdHBzbUVKI2Jpc2VjdGlvbgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcg
bGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
