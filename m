Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D23BFC095C0
	for <lists+jfs-discussion@lfdr.de>; Sat, 25 Oct 2025 18:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BcCWSj+FzE83tIMHhIi7Rd5cbU7t3rFwGqmTUjZKG60=; b=ks14MdxoXCEuQ9l4TdHJCAh/sd
	usguFIeYH45fT+BSz4uynvF2ovrYoMQ0tkq7e/4wM6wacFXB+7iIoXVghZ7IGYMhZSni/q+wuciM+
	Jef3itMJ3EqqCIqV6pcfYeMCLlx5oZwOixYvfWI74UPiaseAgzNYMx18gD5KgGY+h98k=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vCgzO-00047Z-1P;
	Sat, 25 Oct 2025 16:19:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1vCgzM-00047O-Rk
 for jfs-discussion@lists.sourceforge.net;
 Sat, 25 Oct 2025 16:19:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sQl1NBOdWbI6bxA1C+8BD9mJMDny1d4TFtHhCaE3IME=; b=dg9wdgAqIYny3k1/lmd2fnWhe7
 /HJmjGyPzANmjZXYRHFURuQavByqprRlSPDu9aAVFjhySaxlp7lA6hN7OluytURXx8qiBp/bCIMhs
 +tc7l6sddy+3HN1zv5eMZzp+KczE4dVx46JxkFqk94da6pF6T2v+RAvXNLrBhwx6jc8w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sQl1NBOdWbI6bxA1C+8BD9mJMDny1d4TFtHhCaE3IME=; b=EIIFzP2Z0Kwz7EyQVzewZvtkrr
 tdnNWa0gtEfohV4pe9F1JIij0245z53rvT2Zv2cHIJKN9PtADGPdpOrCGgVwj1kJLA6yokE2jYJon
 zOXbpKBrjGk9DToDgt88JHmXnMN0o41ciJwdHcnHIi2VWr075H3kWWwr2/zH6Y+QbRLQ=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vCgzN-0003UW-2g for jfs-discussion@lists.sourceforge.net;
 Sat, 25 Oct 2025 16:19:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 3DCCE603DA;
 Sat, 25 Oct 2025 16:19:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C36CBC4CEF5;
 Sat, 25 Oct 2025 16:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1761409166;
 bh=AbpB0gL1tgUYZeJubeGkbYNli+tZXVzNp/3ticMHYC0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XFQwp6SdVE14tJK/vqM0/78cuUrVDlaBguvxfhSGr6nVpviXpr0bNEx4HGHehjXxW
 UODr/fpmywsX9DtYXDwo2LuULPPrKPazm29LOi7zw1Mv/tt7wubLBcfcwaliyaPpLO
 YPD9IVQuJLrfhLQlI9BnNz7G/N0pkCvoOcdvZuiGFmB+hkFsrxK0VoWHq6VMjl+Y6p
 LjUCTanqJWJKimjNrVWe1DpE+Fah05ZKaT3g9jto9+NzWI7+2H/tb9ma7NJebQsVWH
 W7hxv9+JPy8YxqUi5gY7QUmDpQCXbQhcr3Ec917wssAbq0uMpR557r7eZlBDin0odG
 G+C7lCCGfejEA==
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Date: Sat, 25 Oct 2025 11:57:38 -0400
Message-ID: <20251025160905.3857885-227-sashal@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251025160905.3857885-1-sashal@kernel.org>
References: <20251025160905.3857885-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.17.5
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Shaurya Rane <ssrane_b23@ee.vjti.ac.in> [ Upstream
 commit
 300b072df72694ea330c4c673c035253e07827b8 ] The transaction manager
 initialization
 in txInit() was not properly initializing TxBlock[0].waitor waitqueue, causing
 a crash when txEnd(0) is called on read-only filesystems. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vCgzN-0003UW-2g
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.17-5.4] jfs: fix uninitialized
 waitqueue in transaction manager
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
 jfs-discussion@lists.sourceforge.net,
 syzbot+c4f3462d8b2ad7977bea@syzkaller.appspotmail.com,
 Shaurya Rane <ssrane_b23@ee.vjti.ac.in>, alexander.deucher@amd.com,
 alexandre.f.demers@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

RnJvbTogU2hhdXJ5YSBSYW5lIDxzc3JhbmVfYjIzQGVlLnZqdGkuYWMuaW4+CgpbIFVwc3RyZWFt
IGNvbW1pdCAzMDBiMDcyZGY3MjY5NGVhMzMwYzRjNjczYzAzNTI1M2UwNzgyN2I4IF0KClRoZSB0
cmFuc2FjdGlvbiBtYW5hZ2VyIGluaXRpYWxpemF0aW9uIGluIHR4SW5pdCgpIHdhcyBub3QgcHJv
cGVybHkKaW5pdGlhbGl6aW5nIFR4QmxvY2tbMF0ud2FpdG9yIHdhaXRxdWV1ZSwgY2F1c2luZyBh
IGNyYXNoIHdoZW4KdHhFbmQoMCkgaXMgY2FsbGVkIG9uIHJlYWQtb25seSBmaWxlc3lzdGVtcy4K
CldoZW4gYSBmaWxlc3lzdGVtIGlzIG1vdW50ZWQgcmVhZC1vbmx5LCB0eEJlZ2luKCkgcmV0dXJu
cyB0aWQ9MCB0bwppbmRpY2F0ZSBubyB0cmFuc2FjdGlvbi4gSG93ZXZlciwgdHhFbmQoMCkgc3Rp
bGwgZ2V0cyBjYWxsZWQgYW5kCnRyaWVzIHRvIGFjY2VzcyBUeEJsb2NrWzBdLndhaXRvciB2aWEg
dGlkX3RvX3RibG9jaygwKSwgYnV0IHRoaXMKd2FpdHF1ZXVlIHdhcyBuZXZlciBpbml0aWFsaXpl
ZCBiZWNhdXNlIHRoZSBpbml0aWFsaXphdGlvbiBsb29wCnN0YXJ0ZWQgYXQgaW5kZXggMSBpbnN0
ZWFkIG9mIDAuCgpUaGlzIGNhdXNlcyBhICdub24tc3RhdGljIGtleScgbG9ja2RlcCB3YXJuaW5n
IGFuZCBzeXN0ZW0gY3Jhc2g6CiAgSU5GTzogdHJ5aW5nIHRvIHJlZ2lzdGVyIG5vbi1zdGF0aWMg
a2V5IGluIHR4RW5kCgpGaXggYnkgZW5zdXJpbmcgYWxsIHRyYW5zYWN0aW9uIGJsb2NrcyBpbmNs
dWRpbmcgVHhCbG9ja1swXSBoYXZlCnRoZWlyIHdhaXRxdWV1ZXMgcHJvcGVybHkgaW5pdGlhbGl6
ZWQgZHVyaW5nIHR4SW5pdCgpLgoKUmVwb3J0ZWQtYnk6IHN5emJvdCtjNGYzNDYyZDhiMmFkNzk3
N2JlYUBzeXprYWxsZXIuYXBwc3BvdG1haWwuY29tCgpTaWduZWQtb2ZmLWJ5OiBTaGF1cnlhIFJh
bmUgPHNzcmFuZV9iMjNAZWUudmp0aS5hYy5pbj4KU2lnbmVkLW9mZi1ieTogRGF2ZSBLbGVpa2Ft
cCA8ZGF2ZS5rbGVpa2FtcEBvcmFjbGUuY29tPgpTaWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8
c2FzaGFsQGtlcm5lbC5vcmc+Ci0tLQoKTExNIEdlbmVyYXRlZCBleHBsYW5hdGlvbnMsIG1heSBi
ZSBjb21wbGV0ZWx5IGJvZ3VzOgoKWUVTCi0gYHR4SW5pdCgpYCBwcmV2aW91c2x5IHNraXBwZWQg
aW5kZXggMCB3aGVuIHByaW1pbmcgdGhlIGB0YmxvY2tgIHdhaXQKICBxdWV1ZXMsIHNvIGBUeEJs
b2NrWzBdLndhaXRvcmAgc3RheWVkIHVuaW5pdGlhbGl6ZWQKICAoYGZzL2pmcy9qZnNfdHhubWdy
LmM6MjcwLTI4NGAgYmVmb3JlIHRoZSBwYXRjaCkuIFdoZW4gdGhlIGZpbGVzeXN0ZW0KICBpcyBt
b3VudGVkIHJlYWQtb25seSwgYHR4QmVnaW4oKWAgbGVnaXRpbWF0ZWx5IHJldHVybnMgYHRpZCA9
PSAwYAogIChgZnMvamZzL2pmc190eG5tZ3IuYzozNDgtMzU0YCksIHlldCBldmVyeSBjYWxsZXIg
c3RpbGwgZXhlY3V0ZXMKICBgdHhFbmQodGlkKWAuIGB0eEVuZCgpYCBpbW1lZGlhdGVseSBjYWxs
cyBgVFhOX1dBS0VVUCgmdGJsay0+d2FpdG9yKWAKICBvbiB0aGF0IHJlc2VydmVkIGVudHJ5IChg
ZnMvamZzL2pmc190eG5tZ3IuYzo1MDAtNTA2YCksIHdoaWNoIHRyaXBzCiAgbG9ja2RlcCAo4oCc
dHJ5aW5nIHRvIHJlZ2lzdGVyIG5vbi1zdGF0aWMga2V54oCdKSBhbmQgY2FuIHBhbmljIHRoZQog
IHN5c3RlbSwgZXhhY3RseSBhcyByZXBvcnRlZCBieSBzeXpib3QuCi0gVGhlIGZpeCBlbnN1cmVz
IGJvdGggYHdhaXRvcmAgYW5kIGBnY3dhaXRgIGFyZSBpbml0aWFsaXplZCBmb3IgYWxsCiAgYHRi
bG9ja2BzLCBpbmNsdWRpbmcgdGhlIHJlc2VydmVkIHNsb3QgMCwgYnkgcnVubmluZyBhIGRlZGlj
YXRlZCBsb29wCiAgZnJvbSAwLi5uVHhCbG9jay0xIGJlZm9yZSB3aXJpbmcgdXAgdGhlIGZyZWVs
aXN0CiAgKGBmcy9qZnMvamZzX3R4bm1nci5jOjI3NS0yODNgKS4gTm8gb3RoZXIgYmVoYXZpb3Vy
IGNoYW5nZXMgb2NjdXI6IHRoZQogIGZyZWVsaXN0IHBvcHVsYXRpb24gZm9yIGluZGljZXMg4oml
MSByZW1haW5zIGlkZW50aWNhbCwgYW5kIHNsb3QgMCBpcwogIHN0aWxsIGV4Y2x1ZGVkIGZyb20g
YWxsb2NhdGlvbi4KLSBUaGUgYnVnIHdhcyBpbnRyb2R1Y2VkIHdoZW4gYHR4QmVnaW4oKWAgc3Rh
cnRlZCByZXR1cm5pbmcgMCBmb3IgcmVhZC0KICBvbmx5IG1vdW50cyAoY29tbWl0IDk1ZTJiMzUy
YzAzYjBhODYsIGFscmVhZHkgaW4gNi42KyBzdGFibGUpLiBUaHVzCiAgZXZlcnkgc3VwcG9ydGVk
IHN0YWJsZSB0cmVlIHRoYXQgY29udGFpbnMgdGhhdCBjaGFuZ2UgaXMgc3VzY2VwdGlibGUKICB0
byBhbiBpbW1lZGlhdGUga2VybmVsIGNyYXNoIHdoZW5ldmVyIGB0eEVuZCgwKWAgZXhlY3V0ZXPi
gJR0cmlnZ2VyYWJsZQogIGJ5IHJvdXRpbmUgbWV0YWRhdGEgb3BlcmF0aW9ucyBvbiBhIHJlYWQt
b25seSBKRlMgdm9sdW1lLgotIFRoZSBwYXRjaCBpcyB0aW55LCBsb2NhbGl6ZWQgdG8gaW5pdGlh
bGl6YXRpb24sIGFuZCBjYXJyaWVzIG5lZ2xpZ2libGUKICByZWdyZXNzaW9uIHJpc2s6IGluaXRp
YWxpemluZyBhIHdhaXRxdWV1ZSBoZWFkIHR3aWNlIGlzIHNhZmUsIGFuZCBubwogIGNvbmN1cnJl
bnQgYWN0aXZpdHkgZXhpc3RzIGR1cmluZyBgdHhJbml0KClgLiBUaGVyZSBhcmUgbm8KICBwcmVy
ZXF1aXNpdGUgZGVwZW5kZW5jaWVzLgotIEJlY2F1c2UgdGhpcyByZXNvbHZlcyBhIHJlYWwsIHVz
ZXItdmlzaWJsZSBjcmFzaCBpbnRyb2R1Y2VkIGluCiAgY3VycmVudGx5LXN1cHBvcnRlZCBzdGFi
bGUgcmVsZWFzZXMgYW5kIGRvZXMgc28gd2l0aCBhIG1pbmltYWwsIHdlbGwtCiAgc2NvcGVkIGNo
YW5nZSwgaXQgc3F1YXJlbHkgbWVldHMgdGhlIHN0YWJsZSBiYWNrcG9ydCBjcml0ZXJpYS4KCiBm
cy9qZnMvamZzX3R4bm1nci5jIHwgOSArKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZnMvamZzL2pmc190eG5tZ3Iu
YyBiL2ZzL2pmcy9qZnNfdHhubWdyLmMKaW5kZXggYmUxN2UzYzQzNTgyZi4uNzg0MGEwM2U1YmNi
NyAxMDA2NDQKLS0tIGEvZnMvamZzL2pmc190eG5tZ3IuYworKysgYi9mcy9qZnMvamZzX3R4bm1n
ci5jCkBAIC0yNzIsMTQgKzI3MiwxNSBAQCBpbnQgdHhJbml0KHZvaWQpCiAJaWYgKFR4QmxvY2sg
PT0gTlVMTCkKIAkJcmV0dXJuIC1FTk9NRU07CiAKLQlmb3IgKGsgPSAxOyBrIDwgblR4QmxvY2sg
LSAxOyBrKyspIHsKLQkJVHhCbG9ja1trXS5uZXh0ID0gayArIDE7CisJZm9yIChrID0gMDsgayA8
IG5UeEJsb2NrOyBrKyspIHsKIAkJaW5pdF93YWl0cXVldWVfaGVhZCgmVHhCbG9ja1trXS5nY3dh
aXQpOwogCQlpbml0X3dhaXRxdWV1ZV9oZWFkKCZUeEJsb2NrW2tdLndhaXRvcik7CiAJfQorCisJ
Zm9yIChrID0gMTsgayA8IG5UeEJsb2NrIC0gMTsgaysrKSB7CisJCVR4QmxvY2tba10ubmV4dCA9
IGsgKyAxOworCX0KIAlUeEJsb2NrW2tdLm5leHQgPSAwOwotCWluaXRfd2FpdHF1ZXVlX2hlYWQo
JlR4QmxvY2tba10uZ2N3YWl0KTsKLQlpbml0X3dhaXRxdWV1ZV9oZWFkKCZUeEJsb2NrW2tdLndh
aXRvcik7CiAKIAlUeEFuY2hvci5mcmVldGlkID0gMTsKIAlpbml0X3dhaXRxdWV1ZV9oZWFkKCZU
eEFuY2hvci5mcmVld2FpdCk7Ci0tIAoyLjUxLjAKCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1k
aXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
