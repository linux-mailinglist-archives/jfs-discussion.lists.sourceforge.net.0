Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBA9ACA2F6
	for <lists+jfs-discussion@lfdr.de>; Mon,  2 Jun 2025 01:41:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ktd6Lb6SPi90Ems/J7w55nHr4JA9Dmmy7tFaXEPQ4+A=; b=dT22QIj/Q9EgQqVgHHL7+g6pGZ
	bTFs0zBZ5IWRZ5ihXSazrTEmsqB+QPSKkHkhgs78meaovP5D4Qp4fOR+MJJzvu90YaZdKFMcSj9Tt
	MUNTZL3qdB94xAdasRcnOKve2iE0FpNHYjZk8silNyXhn9rgp//e1PFY/y/cdGx6F7YQ=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uLsIu-0003vQ-EN;
	Sun, 01 Jun 2025 23:41:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1uLsIs-0003vF-JY
 for jfs-discussion@lists.sourceforge.net;
 Sun, 01 Jun 2025 23:41:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XktHDOVNiuiB3kjFlOqYn92BA8z1UFuB8H9tcyORrSc=; b=l49OOrIhKRQqTH8Kjjx37Tke/K
 WpZ4TQZcW89Xbqp3Wqm+Pa+HTfkTQ/l3xtdlnjGQpOUF18wVt9lM0UHMoPSWZY0nqR7zOEaHrIrmi
 PHwO9ze7c5pCEP+8iG4M9jukToqMMaDY02h8du5KJxKzThjyZ5E5yVTviCASaEhCgM1U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XktHDOVNiuiB3kjFlOqYn92BA8z1UFuB8H9tcyORrSc=; b=KyuD6W6NdkN3hMD1wnb29qH0WL
 0cwQ3n8enlf+h5lEFVX4I0bUkZZRF0SC3NE5RXYnphATBwj2+ozKiTlOWYnLl53jOUGo4MDZrfC2Q
 egaWlEqLfl/v907XeUptxE3aW6nnvgYrlmMNGHM1xs1IIUfpkXAuwEYM/TMu9+OO1w+0=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uLsIr-0000dE-Ng for jfs-discussion@lists.sourceforge.net;
 Sun, 01 Jun 2025 23:41:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 139D06116F;
 Sun,  1 Jun 2025 23:41:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72A2BC4CEEE;
 Sun,  1 Jun 2025 23:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1748821270;
 bh=O40NOxv/cbMvwp8e6JnE7yFQyeGP5k32sfavIm7BbIE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HdOBD6I3kZU4PQHEQIrk7vjZkCdclbY8WFbiS5mcr2CNkkJG13HBh+IcS1AU8lRbo
 iPBgqhNqiR/pVW5aOkLlp6I4gtM6m97af6EE6vSnqhL10BacvgLv1FlsMZszbd8jfo
 zdYP8dcoRY4CCT5RkF4XV7YBTGH14k+0bBC0tBFKVgU1BSXz7W4vG2SAF9i2PmNAHE
 l6UFBpLtJowFQYl0thCeGIZ3iIqWU1nPBGXPIWIXfytPh3Xpht6C1OE3vP+CqmcPAI
 bDw6piMIH7BnjwQ3lRm1g07PyZ99bpnUMdglaLS1C8wi1b9thv891UC7oYopdUyoRx
 2qhlr0lXey5Iw==
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Date: Sun,  1 Jun 2025 19:39:36 -0400
Message-Id: <20250601234012.3516352-23-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250601234012.3516352-1-sashal@kernel.org>
References: <20250601234012.3516352-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.1.140
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Aditya Dutt <duttaditya18@gmail.com> [ Upstream commit
 5dff41a86377563f7a2b968aae00d25b4ceb37c9 ] stbl is s8 but it must contain
 offsets into slot which can go from 0 to 127. 
 Content analysis details:   (-0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [172.105.4.254 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [172.105.4.254 listed in bl.score.senderscore.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uLsIr-0000dE-Ng
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.1 23/58] jfs: fix
 array-index-out-of-bounds read in add_missing_indices
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
 jfs-discussion@lists.sourceforge.net, eadavis@qq.com, ghanshyam1898@gmail.com,
 linux-kernel@vger.kernel.org,
 syzbot+b974bd41515f770c608b@syzkaller.appspotmail.com, r.smirnov@omp.ru
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

RnJvbTogQWRpdHlhIER1dHQgPGR1dHRhZGl0eWExOEBnbWFpbC5jb20+CgpbIFVwc3RyZWFtIGNv
bW1pdCA1ZGZmNDFhODYzNzc1NjNmN2EyYjk2OGFhZTAwZDI1YjRjZWIzN2M5IF0KCnN0YmwgaXMg
czggYnV0IGl0IG11c3QgY29udGFpbiBvZmZzZXRzIGludG8gc2xvdCB3aGljaCBjYW4gZ28gZnJv
bSAwIHRvCjEyNy4KCkFkZGVkIGEgYm91bmQgY2hlY2sgZm9yIHRoYXQgZXJyb3IgYW5kIHJldHVy
biAtRUlPIGlmIHRoZSBjaGVjayBmYWlscy4KQWxzbyBtYWtlIGpmc19yZWFkZGlyIHJldHVybiB3
aXRoIGVycm9yIGlmIGFkZF9taXNzaW5nX2luZGljZXMgcmV0dXJucwp3aXRoIGFuIGVycm9yLgoK
UmVwb3J0ZWQtYnk6IHN5emJvdCtiOTc0YmQ0MTUxNWY3NzBjNjA4YkBzeXprYWxsZXIuYXBwc3Bv
dG1haWwuY29tCkNsb3NlczogaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20uL2J1Zz9leHRp
ZD1iOTc0YmQ0MTUxNWY3NzBjNjA4YgpTaWduZWQtb2ZmLWJ5OiBBZGl0eWEgRHV0dCA8ZHV0dGFk
aXR5YTE4QGdtYWlsLmNvbT4KU2lnbmVkLW9mZi1ieTogRGF2ZSBLbGVpa2FtcCA8ZGF2ZS5rbGVp
a2FtcEBvcmFjbGUuY29tPgpTaWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5l
bC5vcmc+Ci0tLQoKKipZRVMqKiBUaGlzIGNvbW1pdCBzaG91bGQgYmUgYmFja3BvcnRlZCB0byBz
dGFibGUga2VybmVsIHRyZWVzLiBIZXJlJ3MKbXkgZGV0YWlsZWQgYW5hbHlzaXM6ICMjIFNlY3Vy
aXR5IGFuZCBTdGFiaWxpdHkgSW1wYWN0IDEuICoqQ3JpdGljYWwKQXJyYXktSW5kZXgtT3V0LW9m
LUJvdW5kcyBGaXgqKjogVGhlIGNvbW1pdCBhZGRyZXNzZXMgYSBzZXJpb3VzIGFycmF5LQppbmRl
eC1vdXQtb2YtYm91bmRzIHZ1bG5lcmFiaWxpdHkgaW4gdGhlIEpGUyBmaWxlc3lzdGVtJ3MKYGFk
ZF9taXNzaW5nX2luZGljZXMoKWAgZnVuY3Rpb24gYXQgYGZzL2pmcy9qZnNfZHRyZWUuYzoyNjQ4
YC4gVGhlIGNvZGUKd2FzIGFjY2Vzc2luZyBgcC0+c2xvdFtzdGJsW2ldXWAgd2l0aG91dCB2YWxp
ZGF0aW5nIHRoYXQgYHN0YmxbaV1gIGlzCndpdGhpbiB2YWxpZCBib3VuZHMgKDAtMTI3KS4gMi4g
KipDb25zaXN0ZW50IHdpdGggRXN0YWJsaXNoZWQgUGF0dGVybioqOgpUaGlzIGZpeCBmb2xsb3dz
IHRoZSBleGFjdCBzYW1lIHBhdHRlcm4gYXMgKiphbGwgNSBzaW1pbGFyIGNvbW1pdHMqKgp0aGF0
IHdlcmUgbWFya2VkIGFzICJCYWNrcG9ydCBTdGF0dXM6IFlFUyI6IC0gU2ltaWxhciBDb21taXRz
ICMxLCAjMiwgIzMKYWxsIGFkZCBib3VuZHMgY2hlY2tpbmcgZm9yIGBzdGJsW2ldIDwgMCB8fCBz
dGJsW2ldID4gMTI3YCAtIFNpbWlsYXIKQ29tbWl0cyAjNCwgIzUgYWRkIGJvdW5kcyBjaGVja2lu
ZyBmb3IgYXJyYXkgaW5kaWNlcyBpbiBKRlMgLSBBbGwgd2VyZQpzdWNjZXNzZnVsbHkgYmFja3Bv
cnRlZCBkdWUgdG8gdGhlaXIgc2VjdXJpdHkgaW1wb3J0YW5jZSAzLiAqKlN5emJvdC0KUmVwb3J0
ZWQgVnVsbmVyYWJpbGl0eSoqOiBUaGUgY29tbWl0IGZpeGVzIGEgdnVsbmVyYWJpbGl0eSByZXBv
cnRlZCBieQpzeXpib3QgKGBzeXpib3QrYjk3NGJkNDE1MTVmNzcwYzYwOGJAc3l6a2FsbGVyLmFw
cHNwb3RtYWlsLmNvbWApLAppbmRpY2F0aW5nIHRoaXMgaXMgYSByZWFsIGV4cGxvaXRhYmxlIGlz
c3VlIGZvdW5kIHRocm91Z2ggZnV6emluZy4gIyMKQ29kZSBBbmFseXNpcyAqKktleSBDaGFuZ2Vz
IE1hZGU6KiogMS4gKipCb3VuZHMgQ2hlY2sgQWRkaXRpb24qKjogQWRkZWQKdmFsaWRhdGlvbiBg
aWYgKHN0YmxbaV0gPCAwKWAgYmVmb3JlIGFjY2Vzc2luZyBgcC0+c2xvdFtzdGJsW2ldXWAgMi4K
KipFcnJvciBIYW5kbGluZyoqOiBDaGFuZ2VkIGBhZGRfbWlzc2luZ19pbmRpY2VzKClgIGZyb20g
YHZvaWRgIHRvIGBpbnRgCnJldHVybiB0eXBlIHRvIHByb3BhZ2F0ZSBlcnJvcnMgMy4gKipQcm9w
ZXIgRXJyb3IgUHJvcGFnYXRpb24qKjoKTW9kaWZpZWQgYGpmc19yZWFkZGlyKClgIHRvIGNoZWNr
IHJldHVybiB2YWx1ZSBhbmQgZXhpdCBvbiBlcnJvcjogYGlmCigocmMgPSBhZGRfbWlzc2luZ19p
bmRpY2VzKGlwLCBibikpKSBnb3RvIG91dDtgIDQuICoqVHJhbnNhY3Rpb24KQ2xlYW51cCoqOiBB
ZGRlZCBgdHhBYm9ydCh0aWQsIDApYCBvbiBlcnJvciBwYXRoIHRvIHByb3Blcmx5IGNsZWFuIHVw
CnRoZSB0cmFuc2FjdGlvbiAqKlRlY2huaWNhbCBDb250ZXh0OioqIC0gYHN0YmxgIGlzIGRlY2xh
cmVkIGFzIGBzOCAqYAooc2lnbmVkIDgtYml0IGFycmF5KSBidXQgbXVzdCBjb250YWluIHZhbGlk
IHNsb3QgaW5kaWNlcyAoMC0xMjcpIC0KYERUUEFHRU1BWFNMT1RgIGlzIGRlZmluZWQgYXMgMTI4
LCBzbyB2YWxpZCBpbmRpY2VzIGFyZSAwLTEyNyAtIE5lZ2F0aXZlCnZhbHVlcyBpbiBgc3RibFtp
XWAgY2F1c2UgYXJyYXktaW5kZXgtb3V0LW9mLWJvdW5kcyB3aGVuIGFjY2Vzc2luZwpgcC0+c2xv
dFtzdGJsW2ldXWAgIyMgQmFja3BvcnQgQ3JpdGVyaWEgQXNzZXNzbWVudCDinIUgKipGaXhlcyBJ
bXBvcnRhbnQKQnVnKio6IFByZXZlbnRzIHBvdGVudGlhbCBrZXJuZWwgY3Jhc2hlcyBhbmQgc2Vj
dXJpdHkgaXNzdWVzIOKchSAqKlNtYWxsCmFuZCBDb250YWluZWQqKjogTGltaXRlZCB0byBvbmUg
ZnVuY3Rpb24gd2l0aCBjbGVhciwgbWluaW1hbCBjaGFuZ2VzIOKchQoqKk5vIFNpZGUgRWZmZWN0
cyoqOiBPbmx5IGFkZHMgYm91bmRzIGNoZWNraW5nIGFuZCBlcnJvciBoYW5kbGluZyDinIUgKipO
bwpBcmNoaXRlY3R1cmFsIENoYW5nZXMqKjogUHJlc2VydmVzIGV4aXN0aW5nIGxvZ2ljIGZsb3cg
4pyFICoqQ3JpdGljYWwKU3Vic3lzdGVtKio6IEZpbGVzeXN0ZW0gY29ycnVwdGlvbi9jcmFzaGVz
IGFmZmVjdCBzeXN0ZW0gc3RhYmlsaXR5IOKchQoqKkNsZWFyIFBhdHRlcm4qKjogSWRlbnRpY2Fs
IHRvIDUgb3RoZXIgc3VjY2Vzc2Z1bGx5IGJhY2twb3J0ZWQgSkZTCmZpeGVzIOKchSAqKk1pbmlt
YWwgUmVncmVzc2lvbiBSaXNrKio6IE9ubHkgYWRkcyBzYWZldHkgY2hlY2tzLCBkb2Vzbid0CmNo
YW5nZSBjb3JlIGxvZ2ljIOKchSAqKkNvbmZpbmVkIHRvIFN1YnN5c3RlbSoqOiBDaGFuZ2VzIGlz
b2xhdGVkIHRvIEpGUwpkdHJlZSBoYW5kbGluZyAjIyBFeGlzdGluZyBJbmZyYXN0cnVjdHVyZSBU
aGUga2VybmVsIGFscmVhZHkgaGFzCmV4dGVuc2l2ZSBib3VuZHMgY2hlY2tpbmcgZm9yIGBzdGJs
YCBpbmRpY2VzIHRocm91Z2hvdXQgYGpmc19kdHJlZS5jYDogLQpMaW5lIDI4OTUtMjg5ODogYGlm
IChzdGJsW2ldIDwgMCB8fCBzdGJsW2ldID4gMTI3KWAgaW4gYGpmc19yZWFkZGlyKClgIC0KTGlu
ZSAzMDk5LTMxMDI6IGBpZiAoc3RibFswXSA8IDAgfHwgc3RibFswXSA+IDEyNylgIGluIGBkdFJl
YWRGaXJzdCgpYCAtCkxpbmUgNjM3LTY0MDogYGlmIChzdGJsW2luZGV4XSA8IDApYCBpbiBzZWFy
Y2ggZnVuY3Rpb25zIFRoaXMgY29tbWl0CnNpbXBseSBleHRlbmRzIHRoZSBzYW1lIHBhdHRlcm4g
dG8gdGhlIHByZXZpb3VzbHkgbWlzc2VkCmBhZGRfbWlzc2luZ19pbmRpY2VzKClgIGZ1bmN0aW9u
LCBtYWludGFpbmluZyBjb25zaXN0ZW5jeSB3aXRoIHRoZQpleGlzdGluZyBjb2RlYmFzZSBzZWN1
cml0eSBtZWFzdXJlcy4gVGhlIGZpeCBpcyBlc3NlbnRpYWwgZm9yIHByZXZlbnRpbmcKcG90ZW50
aWFsIGtlcm5lbCBjcmFzaGVzIGFuZCBtYWludGFpbmluZyBmaWxlc3lzdGVtIGludGVncml0eSwg
bWFraW5nIGl0CmFuIGlkZWFsIGNhbmRpZGF0ZSBmb3Igc3RhYmxlIHRyZWUgYmFja3BvcnRpbmcu
CgogZnMvamZzL2pmc19kdHJlZS5jIHwgMTggKysrKysrKysrKysrKysrLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9mcy9q
ZnMvamZzX2R0cmVlLmMgYi9mcy9qZnMvamZzX2R0cmVlLmMKaW5kZXggOTNkYjZlZWM0NDY1NS4u
YWIxMTg0OWNmOWNjMyAxMDA2NDQKLS0tIGEvZnMvamZzL2pmc19kdHJlZS5jCisrKyBiL2ZzL2pm
cy9qZnNfZHRyZWUuYwpAQCAtMjYxMyw3ICsyNjEzLDcgQEAgdm9pZCBkdEluaXRSb290KHRpZF90
IHRpZCwgc3RydWN0IGlub2RlICppcCwgdTMyIGlkb3Rkb3QpCiAgKgkgICAgIGZzY2suamZzIHNo
b3VsZCByZWFsbHkgZml4IHRoaXMsIGJ1dCBpdCBjdXJyZW50bHkgZG9lcyBub3QuCiAgKgkgICAg
IENhbGxlZCBmcm9tIGpmc19yZWFkZGlyIHdoZW4gYmFkIGluZGV4IGlzIGRldGVjdGVkLgogICov
Ci1zdGF0aWMgdm9pZCBhZGRfbWlzc2luZ19pbmRpY2VzKHN0cnVjdCBpbm9kZSAqaW5vZGUsIHM2
NCBibikKK3N0YXRpYyBpbnQgYWRkX21pc3NpbmdfaW5kaWNlcyhzdHJ1Y3QgaW5vZGUgKmlub2Rl
LCBzNjQgYm4pCiB7CiAJc3RydWN0IGxkdGVudHJ5ICpkOwogCXN0cnVjdCBkdF9sb2NrICpkdGxj
azsKQEAgLTI2MjIsNyArMjYyMiw3IEBAIHN0YXRpYyB2b2lkIGFkZF9taXNzaW5nX2luZGljZXMo
c3RydWN0IGlub2RlICppbm9kZSwgczY0IGJuKQogCXN0cnVjdCBsdiAqbHY7CiAJc3RydWN0IG1l
dGFwYWdlICptcDsKIAlkdHBhZ2VfdCAqcDsKLQlpbnQgcmM7CisJaW50IHJjID0gMDsKIAlzOCAq
c3RibDsKIAl0aWRfdCB0aWQ7CiAJc3RydWN0IHRsb2NrICp0bGNrOwpAQCAtMjY0Nyw2ICsyNjQ3
LDE2IEBAIHN0YXRpYyB2b2lkIGFkZF9taXNzaW5nX2luZGljZXMoc3RydWN0IGlub2RlICppbm9k
ZSwgczY0IGJuKQogCiAJc3RibCA9IERUX0dFVFNUQkwocCk7CiAJZm9yIChpID0gMDsgaSA8IHAt
PmhlYWRlci5uZXh0aW5kZXg7IGkrKykgeworCQlpZiAoc3RibFtpXSA8IDApIHsKKwkJCWpmc19l
cnIoImpmczogYWRkX21pc3NpbmdfaW5kaWNlczogSW52YWxpZCBzdGJsWyVkXSA9ICVkIGZvciBp
bm9kZSAlbGQsIGJsb2NrID0gJWxsZCIsCisJCQkJaSwgc3RibFtpXSwgKGxvbmcpaW5vZGUtPmlf
aW5vLCAobG9uZyBsb25nKWJuKTsKKwkJCXJjID0gLUVJTzsKKworCQkJRFRfUFVUUEFHRShtcCk7
CisJCQl0eEFib3J0KHRpZCwgMCk7CisJCQlnb3RvIGVuZDsKKwkJfQorCiAJCWQgPSAoc3RydWN0
IGxkdGVudHJ5ICopICZwLT5zbG90W3N0YmxbaV1dOwogCQlpbmRleCA9IGxlMzJfdG9fY3B1KGQt
PmluZGV4KTsKIAkJaWYgKChpbmRleCA8IDIpIHx8IChpbmRleCA+PSBKRlNfSVAoaW5vZGUpLT5u
ZXh0X2luZGV4KSkgewpAQCAtMjY2NCw2ICsyNjc0LDcgQEAgc3RhdGljIHZvaWQgYWRkX21pc3Np
bmdfaW5kaWNlcyhzdHJ1Y3QgaW5vZGUgKmlub2RlLCBzNjQgYm4pCiAJKHZvaWQpIHR4Q29tbWl0
KHRpZCwgMSwgJmlub2RlLCAwKTsKIGVuZDoKIAl0eEVuZCh0aWQpOworCXJldHVybiByYzsKIH0K
IAogLyoKQEAgLTMwMTcsNyArMzAyOCw4IEBAIGludCBqZnNfcmVhZGRpcihzdHJ1Y3QgZmlsZSAq
ZmlsZSwgc3RydWN0IGRpcl9jb250ZXh0ICpjdHgpCiAJCX0KIAogCQlpZiAoZml4X3BhZ2UpIHsK
LQkJCWFkZF9taXNzaW5nX2luZGljZXMoaXAsIGJuKTsKKwkJCWlmICgocmMgPSBhZGRfbWlzc2lu
Z19pbmRpY2VzKGlwLCBibikpKQorCQkJCWdvdG8gb3V0OwogCQkJcGFnZV9maXhlZCA9IDE7CiAJ
CX0KIAotLSAKMi4zOS41CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlz
dGluZm8vamZzLWRpc2N1c3Npb24K
