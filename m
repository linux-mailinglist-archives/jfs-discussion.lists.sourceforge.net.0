Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ABTeEvvokGkOdwEAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Sat, 14 Feb 2026 22:28:27 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9380413D6CB
	for <lists+jfs-discussion@lfdr.de>; Sat, 14 Feb 2026 22:28:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JxvHnid8bVI0fVpH5O4nm16C8lCq8O9DQTYQngCi4+k=; b=nRDvFd5E3HB9bGgqve6mclfjXC
	rsah+xGSA0OeoG5nIiJV/KRoW8mq4MyIfxUBY8ntEnu+nMn9KhdRK3OGyz5xC042nx0Ok88nprTeq
	6Io5pNFjkrY11ojNUWEioO6xnguCqhPdSiQ5c+bWp45jw4LFOjaEN9AjpkH4CHpm8kfU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vrNB9-0005zC-Nw;
	Sat, 14 Feb 2026 21:27:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1vrNAd-0005yi-SQ
 for jfs-discussion@lists.sourceforge.net;
 Sat, 14 Feb 2026 21:27:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7HhWzzCnZ/Zbg7NqWHB4LasOW9+x/L/Sd8N1XvsM4lw=; b=evAqut6871jmWbDtSLZHaaUMc8
 8oN+hxWBTXzgM1CPv+SWEMhhv30KoLZDtqoq3XpMRgPEdzNXetsm/hEnBnIj6fWh4f1SybFyRf+fO
 PDSwh4HJVywdxfWTdq8GqZ2swhL6tNJktyxA4JUpxhYW3xjPvO4B4LZ7o7Wb8s+/uHgs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7HhWzzCnZ/Zbg7NqWHB4LasOW9+x/L/Sd8N1XvsM4lw=; b=SOhjIQaJBmu7nK790Mk9NOOBbN
 tzRn9C8C6o8kG9Udhh6eDoB7xnp2ajcznTk9hel89h1xWX/7JrfHaUs2wj558p+j1hNWeIZVHLtAK
 gm8n7yfQfZnYGZQUmpABllxZ7QB1iHqJLz1PE0nRk3meRzH9JnpBEspR1shXCNUTLGlA=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vrNAd-0004h7-67 for jfs-discussion@lists.sourceforge.net;
 Sat, 14 Feb 2026 21:27:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 7D6F960129;
 Sat, 14 Feb 2026 21:27:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE960C19423;
 Sat, 14 Feb 2026 21:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1771104433;
 bh=jjUeI65DKfRKw44ufB5viyNZu9uX2y0jcM6x9CaYidU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PDsClJWOVLAKH2152uXkuNUgGyLgQ5YLUSuv9mp1xPy2Y6SMO4vxTSI8rzSmV7oqE
 Ts3xLf3kD173b3WAYHE+QzOd2SyPlGnxvADAM5zYZKrV/CN7VhzI/Q/3SM00JEvkIx
 sZtlA/S0jkaxxafxdvmUsRhmH7+s/2xIOzQQyjZ6jMxOhRgIRnQ4O20Bz/4dqWsgBX
 9+uVeBj+JjhXgFdehggVhUiLiGpgqp0ekqvlHZmvL07OqfxdTvCqSrbdWskk+G24hX
 5fwGISx4WU+XnEZcUf58maccAbyLNy3IAHetrGT1JE553vinHAA0TUHuouEj93SXtH
 xwTMqTIsVrWkg==
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Date: Sat, 14 Feb 2026 16:23:45 -0500
Message-ID: <20260214212452.782265-80-sashal@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260214212452.782265-1-sashal@kernel.org>
References: <20260214212452.782265-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.19
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Jori Koolstra <jkoolstra@xs4all.nl> [ Upstream commit
 9218dc26fd922b09858ecd3666ed57dfd8098da8 ] If nlink is maximal for a directory
 (-1) and inside that directory you perform a rename for some child directory
 (not moving from the parent), then the nlink of the first directory is first
 incremente [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [172.105.4.254 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vrNAd-0004h7-67
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.19-5.10] jfs: nlink overflow in
 jfs_rename
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
Cc: Sasha Levin <sashal@kernel.org>, shaggy@kernel.org, brauner@kernel.org,
 neil.armstrong@linaro.org, yelangyan@huaqin.corp-partner.google.com,
 jlayton@kernel.org, jfs-discussion@lists.sourceforge.net,
 Jori Koolstra <jkoolstra@xs4all.nl>, viro@zeniv.linux.org.uk, neil@brown.name,
 syzbot+9131ddfd7870623b719f@syzkaller.appspotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-7.01 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,huaqin.corp-partner.google.com,lists.sourceforge.net,xs4all.nl,zeniv.linux.org.uk,brown.name,syzkaller.appspotmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS(0.00)[m:patches@lists.linux.dev,m:stable@vger.kernel.org,m:sashal@kernel.org,m:shaggy@kernel.org,m:brauner@kernel.org,m:neil.armstrong@linaro.org,m:yelangyan@huaqin.corp-partner.google.com,m:jlayton@kernel.org,m:jfs-discussion@lists.sourceforge.net,m:jkoolstra@xs4all.nl,m:viro@zeniv.linux.org.uk,m:neil@brown.name,m:syzbot+9131ddfd7870623b719f@syzkaller.appspotmail.com,m:syzbot@syzkaller.appspotmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel.org:-];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel.org:s=k20201202];
	TAGGED_RCPT(0.00)[jfs-discussion,9131ddfd7870623b719f];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[sashal@kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,oracle.com:email,appspotmail.com:email]
X-Rspamd-Queue-Id: 9380413D6CB
X-Rspamd-Action: no action

RnJvbTogSm9yaSBLb29sc3RyYSA8amtvb2xzdHJhQHhzNGFsbC5ubD4KClsgVXBzdHJlYW0gY29t
bWl0IDkyMThkYzI2ZmQ5MjJiMDk4NThlY2QzNjY2ZWQ1N2RmZDgwOThkYTggXQoKSWYgbmxpbmsg
aXMgbWF4aW1hbCBmb3IgYSBkaXJlY3RvcnkgKC0xKSBhbmQgaW5zaWRlIHRoYXQgZGlyZWN0b3J5
IHlvdQpwZXJmb3JtIGEgcmVuYW1lIGZvciBzb21lIGNoaWxkIGRpcmVjdG9yeSAobm90IG1vdmlu
ZyBmcm9tIHRoZSBwYXJlbnQpLAp0aGVuIHRoZSBubGluayBvZiB0aGUgZmlyc3QgZGlyZWN0b3J5
IGlzIGZpcnN0IGluY3JlbWVudGVkIGFuZCBsYXRlcgpkZWNyZW1lbnRlZC4gTm9ybWFsbHkgdGhp
cyBpcyBmaW5lLCBidXQgd2hlbiBubGluayA9IC0xIHRoaXMgY2F1c2VzIGEKd3JhcCBhcm91bmQg
dG8gMCwgYW5kIHRoZW4gZHJvcF9ubGluayBpc3N1ZXMgYSB3YXJuaW5nLgoKQWZ0ZXIgYXBwbHlp
bmcgdGhlIHBhdGNoIHN5emJvdCBubyBsb25nZXIgaXNzdWVzIGFueSB3YXJuaW5ncy4gSSBhbHNv
CnJhbiBzb21lIGJhc2ljIGZzIHRlc3RzIHRvIGxvb2sgZm9yIGFueSByZWdyZXNzaW9ucy4KClNp
Z25lZC1vZmYtYnk6IEpvcmkgS29vbHN0cmEgPGprb29sc3RyYUB4czRhbGwubmw+ClJlcG9ydGVk
LWJ5OiBzeXpib3QrOTEzMWRkZmQ3ODcwNjIzYjcxOWZAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNv
bQpDbG9zZXM6IGh0dHBzOi8vc3l6Ym90Lm9yZy9idWc/ZXh0aWQ9OTEzMWRkZmQ3ODcwNjIzYjcx
OWYKU2lnbmVkLW9mZi1ieTogRGF2ZSBLbGVpa2FtcCA8ZGF2ZS5rbGVpa2FtcEBvcmFjbGUuY29t
PgpTaWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+Ci0tLQoKTExN
IEdlbmVyYXRlZCBleHBsYW5hdGlvbnMsIG1heSBiZSBjb21wbGV0ZWx5IGJvZ3VzOgoKIyMgQW5h
bHlzaXMgb2YgamZzOiBubGluayBvdmVyZmxvdyBpbiBqZnNfcmVuYW1lCgojIyMgMS4gQ29tbWl0
IE1lc3NhZ2UgQW5hbHlzaXMKClRoZSBjb21taXQgbWVzc2FnZSBpcyBjbGVhciBhbmQgd2VsbC1z
dHJ1Y3R1cmVkOgotICoqUHJvYmxlbSoqOiBXaGVuIGEgZGlyZWN0b3J5IGhhcyBtYXhpbXVtIG5s
aW5rIChgLTFgIC8gYFVJTlRfTUFYYCksCiAgcGVyZm9ybWluZyBhIHJlbmFtZSBvZiBhIGNoaWxk
IGRpcmVjdG9yeSB3aXRoaW4gdGhlIHNhbWUgcGFyZW50IGNhdXNlcwogIG5saW5rIHRvIHdyYXAg
YXJvdW5kOiBmaXJzdCBpbmNyZW1lbnRlZCAod3JhcHMgdG8gMCksIHRoZW4gZGVjcmVtZW50ZWQK
ICB2aWEgYGRyb3BfbmxpbmsoKWAgd2hpY2ggdHJpZ2dlcnMgYSBrZXJuZWwgV0FSTklORyBiZWNh
dXNlIG5saW5rIGlzCiAgYWxyZWFkeSAwLgotICoqUmVwb3J0ZXIqKjogc3l6Ym90IChHb29nbGUn
cyBrZXJuZWwgZnV6emVyKSDigJQgYSBzdHJvbmcgaW5kaWNhdG9yIG9mCiAgYSByZWFsLCByZXBy
b2R1Y2libGUgYnVnLgotICoqVGVzdGluZyoqOiBBdXRob3IgY29uZmlybXMgc3l6Ym90IHdhcm5p
bmcgaXMgcmVzb2x2ZWQgYW5kIHJhbiBiYXNpYwogIGZzIHJlZ3Jlc3Npb24gdGVzdHMuCi0gKipN
YWludGFpbmVyIHNpZ24tb2ZmKio6IERhdmUgS2xlaWthbXAgKEpGUyBtYWludGFpbmVyKSBzaWdu
ZWQgb2ZmLgoKIyMjIDIuIENvZGUgQ2hhbmdlIEFuYWx5c2lzCgpUaGUgZml4IGlzIGluIGBmcy9q
ZnMvbmFtZWkuY2AgaW4gdGhlIGBqZnNfcmVuYW1lKClgIGZ1bmN0aW9uLiBUd28KY2hhbmdlczoK
CioqQ2hhbmdlIDEqKiAobGluZSB+MTIzMSk6CmBgYGMKLSBpZiAoU19JU0RJUihvbGRfaXAtPmlf
bW9kZSkpCisgaWYgKFNfSVNESVIob2xkX2lwLT5pX21vZGUpICYmIG9sZF9kaXIgIT0gbmV3X2Rp
cikKICAgICBpbmNfbmxpbmsobmV3X2Rpcik7CmBgYApXaGVuIHJlbmFtaW5nIGEgZGlyZWN0b3J5
IHdpdGhpbiB0aGUgKipzYW1lIHBhcmVudCoqIChgb2xkX2RpciA9PQpuZXdfZGlyYCksIHRoZXJl
J3Mgbm8gbmVlZCB0byBpbmNyZW1lbnQgbmxpbmsgb24gdGhlIG5ldyBkaXJlY3RvcnkKYmVjYXVz
ZSB0aGUgZGlyZWN0b3J5IGlzbid0IGdhaW5pbmcgYSBuZXcgc3ViZGlyZWN0b3J5IOKAlCB0aGUK
c3ViZGlyZWN0b3J5IGlzIGp1c3QgYmVpbmcgcmVuYW1lZCBpbiBwbGFjZS4gVGhlIGBpbmNfbmxp
bmtgIHNob3VsZCBvbmx5CmhhcHBlbiB3aGVuIG1vdmluZyBhIGRpcmVjdG9yeSB0byBhICoqZGlm
ZmVyZW50KiogcGFyZW50LgoKKipDaGFuZ2UgMioqIChsaW5lcyB+MTI0NS0xMjQ3KToKYGBgYwot
IGRyb3Bfbmxpbmsob2xkX2Rpcik7CisgaWYgKG5ld19pcCB8fCBvbGRfZGlyICE9IG5ld19kaXIp
CisgICAgIGRyb3Bfbmxpbmsob2xkX2Rpcik7CmBgYApTaW1pbGFybHksIGBkcm9wX25saW5rYCBv
biBgb2xkX2RpcmAgc2hvdWxkIG9ubHkgaGFwcGVuIHdoZW4gdGhlCmRpcmVjdG9yeSBpcyBhY3R1
YWxseSBsb3NpbmcgYSBzdWJkaXJlY3RvcnkgKGVpdGhlciBpdCdzIGJlaW5nIG1vdmVkIHRvCmEg
ZGlmZmVyZW50IHBhcmVudCwgb3IgaXQncyByZXBsYWNpbmcgYW4gZXhpc3RpbmcgZW50cnkgYG5l
d19pcGApLiBXaGVuCnJlbmFtaW5nIHdpdGhpbiB0aGUgc2FtZSBkaXJlY3RvcnkgYW5kIG5vdCBy
ZXBsYWNpbmcgYW55dGhpbmcsIG5saW5rCnNob3VsZG4ndCBjaGFuZ2UuCgojIyMgMy4gQnVnIE1l
Y2hhbmlzbQoKVGhlIGJ1ZyBpcyBhbiBubGluayBpbnRlZ2VyIG92ZXJmbG93L3VuZGVyZmxvdzoK
MS4gRGlyZWN0b3J5IGhhcyBubGluayA9IGBVSU5UX01BWGAgKG1heGltdW0gdmFsdWUpCjIuIEEg
Y2hpbGQgZGlyZWN0b3J5IHJlbmFtZSB3aXRoaW4gdGhlIHNhbWUgcGFyZW50IHRyaWdnZXJzCiAg
IGBpbmNfbmxpbmsoKWAg4oaSIG5saW5rIHdyYXBzIHRvIDAKMy4gVGhlbiBgZHJvcF9ubGluaygp
YCBpcyBjYWxsZWQgb24gbmxpbms9MCwgd2hpY2ggdHJpZ2dlcnMgYSBgV0FSTl9PTmAKICAgaW4g
dGhlIFZGUyBsYXllcgo0LiBUaGlzIGNhdXNlcyBhIGtlcm5lbCBXQVJOSU5HIOKAlCBhIGNsZWFy
IHN0YWJpbGl0eSBpc3N1ZQoKVGhlIGZpeCBpcyBsb2dpY2FsbHkgY29ycmVjdDogd2hlbiByZW5h
bWluZyB3aXRoaW4gdGhlIHNhbWUgZGlyZWN0b3J5LApubGluayBzaG91bGRuJ3QgYmUgdG91Y2hl
ZCBhdCBhbGwgc2luY2UgdGhlIG51bWJlciBvZiBzdWJkaXJlY3RvcmllcwpoYXNuJ3QgY2hhbmdl
ZC4KCiMjIyA0LiBDbGFzc2lmaWNhdGlvbgoKLSAqKkJ1ZyBmaXgqKjogWUVTIOKAlCBmaXhlcyBh
biBubGluayBvdmVyZmxvdy91bmRlcmZsb3cgdGhhdCB0cmlnZ2VycwogIGtlcm5lbCB3YXJuaW5n
cwotICoqU3l6Ym90LXJlcG9ydGVkKio6IFlFUyDigJQgcmVwcm9kdWNpYmxlIGZ1enplci1mb3Vu
ZCBidWcKLSAqKlNlY3VyaXR5IHJlbGV2YW5jZSoqOiBNRURJVU0g4oCUIG5saW5rIGNvcnJ1cHRp
b24gY291bGQgcG90ZW50aWFsbHkgYmUKICBleHBsb2l0ZWQsIGFuZCB0cmlnZ2VyaW5nIGtlcm5l
bCB3YXJuaW5ncyBpcyBpdHNlbGYgYSBzdGFiaWxpdHkKICBjb25jZXJuCgojIyMgNS4gU2NvcGUg
YW5kIFJpc2sgQXNzZXNzbWVudAoKLSAqKkxpbmVzIGNoYW5nZWQqKjogfjYgbGluZXMgb2YgYWN0
dWFsIGxvZ2ljIGNoYW5nZSAodmVyeSBzbWFsbCkKLSAqKkZpbGVzIHRvdWNoZWQqKjogMSBmaWxl
IChgZnMvamZzL25hbWVpLmNgKQotICoqU3Vic3lzdGVtKio6IEpGUyBmaWxlc3lzdGVtIOKAlCBt
YXR1cmUsIHN0YWJsZSBmaWxlc3lzdGVtCi0gKipSaXNrKio6IExPVyDigJQgdGhlIGNvbmRpdGlv
bnMgYWRkZWQgKGBvbGRfZGlyICE9IG5ld19kaXJgIGFuZAogIGBuZXdfaXBgKSBhcmUgc3RhbmRh
cmQgY2hlY2tzIGFscmVhZHkgdXNlZCBlbHNld2hlcmUgaW4gdGhlIHNhbWUKICBmdW5jdGlvbi4g
VGhlIGxvZ2ljIGlzIHN0cmFpZ2h0Zm9yd2FyZDogZG9uJ3QgbW9kaWZ5IG5saW5rIHdoZW4gdGhl
CiAgZGlyZWN0b3J5IGNvdW50IGlzbid0IGFjdHVhbGx5IGNoYW5naW5nLgotICoqUmVncmVzc2lv
biByaXNrKio6IE1JTklNQUwg4oCUIHRoaXMgbWFrZXMgSkZTIGNvbnNpc3RlbnQgd2l0aCBob3cK
ICBvdGhlciBmaWxlc3lzdGVtcyBoYW5kbGUgc2FtZS1kaXJlY3RvcnkgcmVuYW1lcwoKIyMjIDYu
IFN0YWJsZSBLZXJuZWwgQ3JpdGVyaWEgQ2hlY2sKCi0gKipPYnZpb3VzbHkgY29ycmVjdCBhbmQg
dGVzdGVkKio6IFlFUyDigJQgbG9naWMgaXMgY2xlYXIsIHRlc3RlZCBieQogIGF1dGhvciwgdmVy
aWZpZWQgYnkgc3l6Ym90Ci0gKipGaXhlcyBhIHJlYWwgYnVnKio6IFlFUyDigJQga2VybmVsIFdB
Uk5JTkcgdHJpZ2dlciwgbmxpbmsgY29ycnVwdGlvbgotICoqSW1wb3J0YW50IGlzc3VlKio6IFlF
UyDigJQga2VybmVsIFdBUk5JTkcsIHBvdGVudGlhbCBmaWxlc3lzdGVtCiAgbWV0YWRhdGEgY29y
cnVwdGlvbgotICoqU21hbGwgYW5kIGNvbnRhaW5lZCoqOiBZRVMg4oCUIDYgbGluZXMgaW4gb25l
IGZpbGUKLSAqKk5vIG5ldyBmZWF0dXJlcyoqOiBDb3JyZWN0IOKAlCBwdXJlIGJ1ZyBmaXgKLSAq
Kk5vIG5ldyBBUElzKio6IENvcnJlY3QKCiMjIyA3LiBEZXBlbmRlbmNpZXMKClRoZSBmaXggaXMg
c2VsZi1jb250YWluZWQuIEl0IG1vZGlmaWVzIGNvbmRpdGlvbnMgYXJvdW5kIGV4aXN0aW5nCmBp
bmNfbmxpbmsoKWAgYW5kIGBkcm9wX25saW5rKClgIGNhbGxzLiBObyBkZXBlbmRlbmN5IG9uIG90
aGVyIGNvbW1pdHMuClRoZSBhZmZlY3RlZCBjb2RlIChgamZzX3JlbmFtZWApIGhhcyBiZWVuIHN0
YWJsZSBmb3IgeWVhcnMgYW5kIGV4aXN0cyBpbgphbGwgc3RhYmxlIHRyZWVzIHRoYXQgaW5jbHVk
ZSBKRlMuCgojIyMgOC4gVXNlciBJbXBhY3QKCkpGUyB1c2VycyB3aG8gZW5jb3VudGVyIHRoZSBt
YXhpbXVtIG5saW5rIHNjZW5hcmlvICh3aGljaCBzeXpib3QgY2FuCnRyaWdnZXIpIHdpbGwgc2Vl
IGtlcm5lbCB3YXJuaW5ncy4gV2hpbGUgdGhlIHNjZW5hcmlvIHJlcXVpcmVzIG5saW5rIHRvCmJl
IGF0IG1heGltdW0sIHRoaXMgaXMgYSBjb3JyZWN0bmVzcyBpc3N1ZSBpbiBmaWxlc3lzdGVtIG1l
dGFkYXRhCmhhbmRsaW5nLiBGaWxlc3lzdGVtIGJ1Z3MgYXJlIGFsd2F5cyBoaWdoLXByaW9yaXR5
IGZvciBzdGFibGUgYmVjYXVzZQp0aGV5IGNhbiBsZWFkIHRvIGRhdGEgY29ycnVwdGlvbiBvciBs
b3NzLgoKIyMjIENvbmNsdXNpb24KClRoaXMgaXMgYSB0ZXh0Ym9vayBzdGFibGUgYmFja3BvcnQg
Y2FuZGlkYXRlOiBhIHNtYWxsLCBzdXJnaWNhbCBmaXggdG8gYQpzeXpib3QtcmVwb3J0ZWQgYnVn
IGluIGZpbGVzeXN0ZW0gY29kZSwgZml4aW5nIGFuIG5saW5rIG92ZXJmbG93IHRoYXQKdHJpZ2dl
cnMga2VybmVsIHdhcm5pbmdzLiBJdCdzIG9idmlvdXNseSBjb3JyZWN0LCB3ZWxsLXRlc3RlZCwK
bWFpbnRhaW5lci1hcHByb3ZlZCwgYW5kIGNhcnJpZXMgbWluaW1hbCByZWdyZXNzaW9uIHJpc2su
CgoqKllFUyoqCgogZnMvamZzL25hbWVpLmMgfCA2ICsrKystLQogMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9mcy9qZnMvbmFtZWku
YyBiL2ZzL2pmcy9uYW1laS5jCmluZGV4IDY1YTIxOGViYThmYWYuLjc4NzljMDQ5NjMyYjMgMTAw
NjQ0Ci0tLSBhL2ZzL2pmcy9uYW1laS5jCisrKyBiL2ZzL2pmcy9uYW1laS5jCkBAIC0xMjI4LDcg
KzEyMjgsNyBAQCBzdGF0aWMgaW50IGpmc19yZW5hbWUoc3RydWN0IG1udF9pZG1hcCAqaWRtYXAs
IHN0cnVjdCBpbm9kZSAqb2xkX2RpciwKIAkJCQlqZnNfZXJyKCJqZnNfcmVuYW1lOiBkdEluc2Vy
dCByZXR1cm5lZCAtRUlPIik7CiAJCQlnb3RvIG91dF90eDsKIAkJfQotCQlpZiAoU19JU0RJUihv
bGRfaXAtPmlfbW9kZSkpCisJCWlmIChTX0lTRElSKG9sZF9pcC0+aV9tb2RlKSAmJiBvbGRfZGly
ICE9IG5ld19kaXIpCiAJCQlpbmNfbmxpbmsobmV3X2Rpcik7CiAJfQogCS8qCkBAIC0xMjQ0LDcg
KzEyNDQsOSBAQCBzdGF0aWMgaW50IGpmc19yZW5hbWUoc3RydWN0IG1udF9pZG1hcCAqaWRtYXAs
IHN0cnVjdCBpbm9kZSAqb2xkX2RpciwKIAkJZ290byBvdXRfdHg7CiAJfQogCWlmIChTX0lTRElS
KG9sZF9pcC0+aV9tb2RlKSkgewotCQlkcm9wX25saW5rKG9sZF9kaXIpOworCQlpZiAobmV3X2lw
IHx8IG9sZF9kaXIgIT0gbmV3X2RpcikKKwkJCWRyb3Bfbmxpbmsob2xkX2Rpcik7CisKIAkJaWYg
KG9sZF9kaXIgIT0gbmV3X2RpcikgewogCQkJLyoKIAkJCSAqIENoYW5nZSBpbm9kZSBudW1iZXIg
b2YgcGFyZW50IGZvciBtb3ZlZCBkaXJlY3RvcnkKLS0gCjIuNTEuMAoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5n
IGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
