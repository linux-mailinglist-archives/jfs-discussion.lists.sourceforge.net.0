Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QOP9AazokGkOdwEAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Sat, 14 Feb 2026 22:27:08 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4004613D60C
	for <lists+jfs-discussion@lfdr.de>; Sat, 14 Feb 2026 22:27:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kcaoRFXHMf0gTCIBlxHZXkdHx/xUsLJIHF2ac9AOZ3g=; b=DbhitNA+gMF1K0dbj3jggdN9e3
	3Y647MGWTbnFBPOcfOFly6I70kus4gw0QeMjjtBdJLcNUnkePvOUkuEbkjl+qAgvWG6D06QyWG/QK
	9uIorc6q/RGrqBG9jQYU76gbWbLVmX3YPsX66qCfo03ixG7eELhMvHDOQBO964Bg6cY8=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vrN9f-0002ld-RU;
	Sat, 14 Feb 2026 21:26:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1vrN9e-0002lX-79
 for jfs-discussion@lists.sourceforge.net;
 Sat, 14 Feb 2026 21:26:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R9hgGT65/edOJAU3AWt+LmqSAURuad0XJMzjZiB3+v8=; b=NQcpHBTHZgZGmJMIBTeABtdNkL
 OIaRfnweIKsSfxhgY+hPnleTXIQ1rg8TI+hAJ/CrCSurLm+O0dBdTo0XuvUsiok2NzajN5Omgj7lE
 MrUdxphyJP+OppUr5BZx/I/ceNTQ9hHUkmqnmWft6bJOEpw9pfnlYn9El4ttGv5DKU2Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=R9hgGT65/edOJAU3AWt+LmqSAURuad0XJMzjZiB3+v8=; b=gUy9YEXQABAxKP3oSzDZpAcwtA
 sZmjaVENZBL2Y4Oj9G5zNeQwebxmy6djhmLBXsazKIQxvXL42f31QOvcxhv+7XzBVV4m3bVuNiC+e
 fmjDLRKogxK5EJX9wSew8FE8v/inScUhT3g37x6Y9U78BW7vFZnhdxnkA14udGZtzG70=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vrN9e-0004fP-DZ for jfs-discussion@lists.sourceforge.net;
 Sat, 14 Feb 2026 21:26:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 19E2A416B3;
 Sat, 14 Feb 2026 21:26:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECAE5C19422;
 Sat, 14 Feb 2026 21:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1771104368;
 bh=rg3gHK8dA4+JPzitb7VA7CwcRiPGTdd+oWFzHG4lqjo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iuYOd4x2HJ2Sad3q8FuPgOUafd+qg3lY9m8T0u4lJcLHbLZGQnUmEA3grt79webGC
 UbEFCJC2erL6RGwgkfGCGMMyB/q4MiSNBmdR/PihtplAdY8lggJle7N1t/lXcmKu3H
 jfMx/awLu6xqTNDBKIUrXAwd/cZ2dCoISIbwVDb4mcnuoWEn3HsKyn6isLlxAZNd8S
 jDoNb9sLO++aAg+4ru/O5zJftr/AFnfEoDp++FG92KVgYFL/B8KxMBS7p2igXnKOME
 SLySd/hoJKVCkx44K1ab0yOwyBBDCXk19Sz9LIoB+dKmnLovipWwMOKqrlGM0ThWyv
 s4VnMSrOo33oQ==
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Date: Sat, 14 Feb 2026 16:23:10 -0500
Message-ID: <20260214212452.782265-45-sashal@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260214212452.782265-1-sashal@kernel.org>
References: <20260214212452.782265-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.19
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Haotian Zhang <vulab@iscas.ac.cn> [ Upstream commit
 eb0cfcf265714b419cc3549895a00632e76732ae ] The jfsIOWait() thread calls
 try_to_freeze()
 but lacks set_freezable(), causing it to remain non-freezable by default.
 This prevents proper freezing during system suspend. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vrN9e-0004fP-DZ
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.19-5.10] jfs: Add missing
 set_freezable() for freezable kthread
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
From: Sasha Levin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Sasha Levin <sashal@kernel.org>
Cc: Sasha Levin <sashal@kernel.org>, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, liaoyuanhong@vivo.com,
 neil.armstrong@linaro.org, yelangyan@huaqin.corp-partner.google.com,
 Haotian Zhang <vulab@iscas.ac.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-8.51 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	FORGED_RECIPIENTS(0.00)[m:patches@lists.linux.dev,m:stable@vger.kernel.org,m:sashal@kernel.org,m:shaggy@kernel.org,m:jfs-discussion@lists.sourceforge.net,m:liaoyuanhong@vivo.com,m:neil.armstrong@linaro.org,m:yelangyan@huaqin.corp-partner.google.com,m:vulab@iscas.ac.cn,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel.org:s=k20201202];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel.org:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashal@kernel.org];
	TAGGED_RCPT(0.00)[jfs-discussion];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oracle.com:email,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim]
X-Rspamd-Queue-Id: 4004613D60C
X-Rspamd-Action: no action

RnJvbTogSGFvdGlhbiBaaGFuZyA8dnVsYWJAaXNjYXMuYWMuY24+CgpbIFVwc3RyZWFtIGNvbW1p
dCBlYjBjZmNmMjY1NzE0YjQxOWNjMzU0OTg5NWEwMDYzMmU3NjczMmFlIF0KClRoZSBqZnNJT1dh
aXQoKSB0aHJlYWQgY2FsbHMgdHJ5X3RvX2ZyZWV6ZSgpIGJ1dCBsYWNrcyBzZXRfZnJlZXphYmxl
KCksCmNhdXNpbmcgaXQgdG8gcmVtYWluIG5vbi1mcmVlemFibGUgYnkgZGVmYXVsdC4gVGhpcyBw
cmV2ZW50cyBwcm9wZXIKZnJlZXppbmcgZHVyaW5nIHN5c3RlbSBzdXNwZW5kLgoKQWRkIHNldF9m
cmVlemFibGUoKSB0byBtYWtlIHRoZSB0aHJlYWQgZnJlZXphYmxlIGFzIGludGVuZGVkLgoKU2ln
bmVkLW9mZi1ieTogSGFvdGlhbiBaaGFuZyA8dnVsYWJAaXNjYXMuYWMuY24+ClNpZ25lZC1vZmYt
Ynk6IERhdmUgS2xlaWthbXAgPGRhdmUua2xlaWthbXBAb3JhY2xlLmNvbT4KU2lnbmVkLW9mZi1i
eTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3JnPgotLS0KCkxMTSBHZW5lcmF0ZWQgZXhw
bGFuYXRpb25zLCBtYXkgYmUgY29tcGxldGVseSBib2d1czoKClRoaXMgY29uZmlybXMgdGhlIGJ1
ZyBwYXR0ZXJuIGNsZWFybHk6CgotICoqYGpmc190eG5tZ3IuY2AqKiBoYXMgVFdPIGt0aHJlYWRz
IChgamZzX2xhenljb21taXRgIGFuZCBgamZzX3N5bmNgKQogIHRoYXQgYm90aCBjb3JyZWN0bHkg
Y2FsbCBgc2V0X2ZyZWV6YWJsZSgpYCBiZWZvcmUgdGhlaXIgbG9vcHMgYW5kIHRoZW4KICB1c2Ug
YGZyZWV6aW5nKGN1cnJlbnQpYCArIGB0cnlfdG9fZnJlZXplKClgLgotICoqYGpmc19sb2dtZ3Iu
Y2AqKiAoYGpmc0lPV2FpdGApIGhhcyB0aGUgc2FtZSBgZnJlZXppbmcoY3VycmVudClgICsKICBg
dHJ5X3RvX2ZyZWV6ZSgpYCBwYXR0ZXJuIGJ1dCB3YXMgKiptaXNzaW5nKiogdGhlIGBzZXRfZnJl
ZXphYmxlKClgCiAgY2FsbC4gVGhpcyBpcyBjbGVhcmx5IGEgYnVnIOKAlCB0aGUgdGhyZWFkIHdh
cyBpbnRlbmRlZCB0byBiZSBmcmVlemFibGUKICAoaXQgY2hlY2tzIGZvciBmcmVlemUgYW5kIHRy
aWVzIHRvIGZyZWV6ZSkgYnV0IG5ldmVyIG1hcmtlZCBpdHNlbGYgYXMKICBzdWNoLgoKIyMjIDMu
IENMQVNTSUZJQ0FUSU9OCgpUaGlzIGlzIGEgKipyZWFsIGJ1ZyBmaXgqKjoKLSBUaGUgdGhyZWFk
IGlzIGludGVuZGVkIHRvIHBhcnRpY2lwYXRlIGluIHRoZSBrZXJuZWwncyBmcmVlemUgbWVjaGFu
aXNtCiAgKGZvciBzdXNwZW5kL2hpYmVybmF0ZSksIGV2aWRlbmNlZCBieSB0aGUgYGZyZWV6aW5n
KClgIGNoZWNrIGFuZAogIGB0cnlfdG9fZnJlZXplKClgIGNhbGwuCi0gV2l0aG91dCBgc2V0X2Zy
ZWV6YWJsZSgpYCwgdGhlIHRocmVhZCBoYXMgYFBGX05PRlJFRVpFYCBzZXQgYnkKICBkZWZhdWx0
LCBzbyBgZnJlZXppbmcoY3VycmVudClgIGFsd2F5cyByZXR1cm5zIGZhbHNlIGFuZAogIGB0cnlf
dG9fZnJlZXplKClgIGlzIGEgbm8tb3AuCi0gVGhpcyBtZWFucyB0aGUgamZzSU9XYWl0IHRocmVh
ZCAqKm5ldmVyIGZyZWV6ZXMgZHVyaW5nIHN1c3BlbmQqKiwKICB3aGljaCBjYW4gY2F1c2Ugc3Vz
cGVuZCBmYWlsdXJlcyBvciBpc3N1ZXMgd2l0aCBmaWxlc3lzdGVtIGNvbnNpc3RlbmN5CiAgZHVy
aW5nIHN1c3BlbmQvcmVzdW1lIGN5Y2xlcy4KCiMjIyA0LiBTQ09QRSBBTkQgUklTSyBBU1NFU1NN
RU5UCgotICoqU2l6ZSoqOiBTaW5nbGUgbGluZSBhZGRpdGlvbiDigJQgbWluaW1hbCByaXNrLgot
ICoqU2NvcGUqKjogT25seSBhZmZlY3RzIHRoZSBqZnNJT1dhaXQga2VybmVsIHRocmVhZCBpbiB0
aGUgSkZTCiAgZmlsZXN5c3RlbS4KLSAqKlJpc2sqKjogRXh0cmVtZWx5IGxvdy4gVGhpcyBpcyBh
ZGRpbmcgdGhlIGV4YWN0IHNhbWUgcGF0dGVybiB1c2VkIGJ5CiAgdGhlIG90aGVyIHR3byBKRlMg
a3RocmVhZHMuIFRoZSBvbmx5IGJlaGF2aW9yYWwgY2hhbmdlIGlzIHRoYXQgdGhlCiAgdGhyZWFk
IHdpbGwgbm93IGFjdHVhbGx5IGZyZWV6ZSBkdXJpbmcgc3VzcGVuZCwgd2hpY2ggd2FzIHRoZSBv
cmlnaW5hbAogIGRlc2lnbiBpbnRlbnQuCi0gKipTdWJzeXN0ZW0qKjogSkZTIGZpbGVzeXN0ZW0g
4oCUIG1hdHVyZSBhbmQgc3RhYmxlLiBXaGlsZSBub3QgYXMgd2lkZWx5CiAgdXNlZCBhcyBleHQ0
L3hmcywgaXQgaGFzIHJlYWwgdXNlcnMuCgojIyMgNS4gVVNFUiBJTVBBQ1QKClVzZXJzIHJ1bm5p
bmcgSkZTIGZpbGVzeXN0ZW1zIHdobyBzdXNwZW5kL2hpYmVybmF0ZSB0aGVpciBzeXN0ZW1zIGNv
dWxkCmJlIGFmZmVjdGVkIGJ5IHRoZSBub24tZnJlZXphYmxlIGt0aHJlYWQuIFRoZSBpbXBhY3Qg
aW5jbHVkZXM6Ci0gUG90ZW50aWFsIHN1c3BlbmQvaGliZXJuYXRlIGZhaWx1cmVzICh0aGUgZnJl
ZXplciBtYXkgdGltZW91dCB3YWl0aW5nCiAgZm9yIHRoaXMgdGhyZWFkKQotIFBvc3NpYmxlIGZp
bGVzeXN0ZW0gY29uc2lzdGVuY3kgaXNzdWVzIGlmIHRoZSB0aHJlYWQgY29udGludWVzIEkvTwog
IGR1cmluZyBzdXNwZW5kCgojIyMgNi4gU1RBQklMSVRZIElORElDQVRPUlMKCi0gVGhlIGZpeCBm
b2xsb3dzIHRoZSBleGFjdCBzYW1lIHBhdHRlcm4gYXMgdGhlIG90aGVyIHR3byBKRlMga3RocmVh
ZHMKICBpbiBqZnNfdHhubWdyLmMKLSBTaWduZWQgb2ZmIGJ5IHRoZSBKRlMgbWFpbnRhaW5lciAo
RGF2ZSBLbGVpa2FtcCkKLSBUcml2aWFsIG9uZS1saW5lIGFkZGl0aW9uIHdpdGggY2xlYXIgY29y
cmVjdG5lc3MKCiMjIyA3LiBERVBFTkRFTkNZIENIRUNLCgpObyBkZXBlbmRlbmNpZXMuIFRoZSBg
c2V0X2ZyZWV6YWJsZSgpYCBBUEkgYW5kIHRoZSBmcmVlemUgZnJhbWV3b3JrIGhhdmUKZXhpc3Rl
ZCBmb3IgbWFueSBrZXJuZWwgdmVyc2lvbnMuIFRoaXMgcGF0Y2ggYXBwbGllcyB0byBhbnkga2Vy
bmVsIHRoYXQKaGFzIHRoZSBKRlMgZmlsZXN5c3RlbSB3aXRoIHRoZSBqZnNJT1dhaXQgdGhyZWFk
LgoKIyMjIDguIENPTkNMVVNJT04KClRoaXMgaXMgYSB0ZXh0Ym9vayBzdGFibGUgYmFja3BvcnQg
Y2FuZGlkYXRlOgotICoqT2J2aW91c2x5IGNvcnJlY3QqKjogQWRkcyB0aGUgc2FtZSBgc2V0X2Zy
ZWV6YWJsZSgpYCBjYWxsIHVzZWQgYnkKICB0aGUgb3RoZXIgdHdvIEpGUyBrdGhyZWFkcwotICoq
Rml4ZXMgYSByZWFsIGJ1ZyoqOiBUaGUgdGhyZWFkIG5ldmVyIGFjdHVhbGx5IGZyZWV6ZXMgZHVy
aW5nIHN1c3BlbmQKICBkZXNwaXRlIGJlaW5nIGRlc2lnbmVkIHRvIGRvIHNvCi0gKipTbWFsbCBh
bmQgY29udGFpbmVkKio6IFNpbmdsZSBsaW5lIGFkZGl0aW9uCi0gKipObyBuZXcgZmVhdHVyZXMq
KjogSnVzdCBtYWtlcyBleGlzdGluZyBmcmVlemUgc3VwcG9ydCB3b3JrIGNvcnJlY3RseQotICoq
TG93IHJpc2sqKjogQ2Fubm90IGludHJvZHVjZSByZWdyZXNzaW9ucyDigJQgaXQgb25seSBlbmFi
bGVzIHRoZQogIGZyZWV6ZSBiZWhhdmlvciB0aGF0IHdhcyBhbHJlYWR5IGNvZGVkIGJ1dCBuZXZl
ciBhY3RpdmF0ZWQKLSAqKkFmZmVjdHMgcmVhbCB1c2VycyoqOiBBbnlvbmUgdXNpbmcgSkZTIHdp
dGggc3VzcGVuZC9oaWJlcm5hdGUKCioqWUVTKioKCiBmcy9qZnMvamZzX2xvZ21nci5jIHwgMSAr
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9mcy9qZnMvamZz
X2xvZ21nci5jIGIvZnMvamZzL2pmc19sb2dtZ3IuYwppbmRleCBiMzQzYzVlYTExNTkyLi41YjFj
NWRhMDQxNjMwIDEwMDY0NAotLS0gYS9mcy9qZnMvamZzX2xvZ21nci5jCisrKyBiL2ZzL2pmcy9q
ZnNfbG9nbWdyLmMKQEAgLTIzMTEsNiArMjMxMSw3IEBAIGludCBqZnNJT1dhaXQodm9pZCAqYXJn
KQogewogCXN0cnVjdCBsYnVmICpicDsKIAorCXNldF9mcmVlemFibGUoKTsKIAlkbyB7CiAJCXNw
aW5fbG9ja19pcnEoJmxvZ19yZWRyaXZlX2xvY2spOwogCQl3aGlsZSAoKGJwID0gbG9nX3JlZHJp
dmVfbGlzdCkpIHsKLS0gCjIuNTEuMAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Np
b25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
