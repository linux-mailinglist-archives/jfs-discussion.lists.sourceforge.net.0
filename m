Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4AB497E226
	for <lists+jfs-discussion@lfdr.de>; Sun, 22 Sep 2024 17:05:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ssO9F-000525-Rr;
	Sun, 22 Sep 2024 15:05:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <christophe.jaillet@wanadoo.fr>) id 1ssO9D-00051y-L5
 for jfs-discussion@lists.sourceforge.net;
 Sun, 22 Sep 2024 15:05:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NMjmSaHHL4SeXAUDeYQYO6hrQEms9KyingeFrUsyFx8=; b=LZ/bL4PjXhc9qF0cZDHF2x2shH
 k8KeLcZWicScaknDju71NkqY054QowVxApPGMYuQg7GFTb+OUyRXqoPYZR1aIaYC5JV92rwYp0oqB
 EZUr1pBBpGc71AHumgXezipi4viYuFvTmLsG4Uask0sWNOF6eMDesbakF++14dk6Ywjk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NMjmSaHHL4SeXAUDeYQYO6hrQEms9KyingeFrUsyFx8=; b=DF66tUELOClOl8f/+mvRNLigB1
 HJWe5BDpxu67NhnyslXkR9N7tGLZvBf0I1M+f6s1thH5f7MVMdWQlDJCmh4dhxkDwKWH4Wy8CBbKI
 96UXja3lxioPton2FFJHT8CwGDardo15FJ8LZ2Vg9v7dWVwwbzvSznSY6Iw0gjUYMHc8=;
Received: from smtp-15.smtpout.orange.fr ([80.12.242.15]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ssO99-0002as-QM for jfs-discussion@lists.sourceforge.net;
 Sun, 22 Sep 2024 15:05:13 +0000
Received: from [192.168.1.37] ([90.11.132.44]) by smtp.orange.fr with ESMTPA
 id sO90slqsiQFOvsO91s9NY1; Sun, 22 Sep 2024 17:05:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
 s=t20230301; t=1727017504;
 bh=NMjmSaHHL4SeXAUDeYQYO6hrQEms9KyingeFrUsyFx8=;
 h=Message-ID:Date:MIME-Version:Subject:To:From;
 b=k3lUn4nuy7o7OTmByFlC+DEFGcQIKhTIkcafOYwCK7ZYkmkqTFP0rNWMQninCIgOY
 0RRkgQpToT7ygIMUzxFI/FiTMT1smonff0wzfZoZ+lzaqSOsqnt1qJcSMng3u+i00K
 EWW/l26BCnLM+wWp8eV+Z+ocWIb4YqICe8bVtE2Xf/l+cup+6gvLl3uW6zYV5vhx39
 Pz3wZpAuX73mh6DUk1Oafs6eNbydyyXImPh5MZz+P1+LjX9SYIHWhZEuzbuXOU4Yk7
 59LLKvn2k/IAjZlWUQqd1G2Vnboso0h4GBed7SYHjLfikyblfTlX5z2TXmvGu6TqFV
 lItpDLVXLodbw==
X-ME-Helo: [192.168.1.37]
X-ME-Auth: bWFyaW9uLmphaWxsZXRAd2FuYWRvby5mcg==
X-ME-Date: Sun, 22 Sep 2024 17:05:04 +0200
X-ME-IP: 90.11.132.44
Message-ID: <c9f80af9-4cf0-4b6e-8c61-4b7a6f287cd9@wanadoo.fr>
Date: Sun, 22 Sep 2024 17:05:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ghanshyam Agrawal <ghanshyam1898@gmail.com>, shaggy@kernel.org,
 ghandatmanas@gmail.com, jlayton@kernel.org, eadavis@qq.com,
 brauner@kernel.org
References: <20240922110000.128650-1-ghanshyam1898@gmail.com>
Content-Language: en-US, fr-FR
In-Reply-To: <20240922110000.128650-1-ghanshyam1898@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Le 22/09/2024 à 13:00, Ghanshyam Agrawal a écrit : > In
    some cases, dn_numag may be greater than MAXAG which may > result in an array-index-out-of-bounds
    in dbNextAG. Added > a check to return an e [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [80.12.242.15 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [80.12.242.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ssO99-0002as-QM
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds
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
From: Christophe JAILLET via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: syzbot+808f3f84407f08a93022@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

TGUgMjIvMDkvMjAyNCDDoCAxMzowMCwgR2hhbnNoeWFtIEFncmF3YWwgYSDDqWNyaXTCoDoKPiBJ
biBzb21lIGNhc2VzLCBkbl9udW1hZyBtYXkgYmUgZ3JlYXRlciB0aGFuIE1BWEFHIHdoaWNoIG1h
eQo+IHJlc3VsdCBpbiBhbiBhcnJheS1pbmRleC1vdXQtb2YtYm91bmRzIGluIGRiTmV4dEFHLiBB
ZGRlZAo+IGEgY2hlY2sgdG8gcmV0dXJuIGFuIGVycm9yIGNvZGUgYmVmb3JlIHdlIGNyYXNoLgo+
IAo+IFJlcG9ydGVkLWJ5OiBzeXpib3QrODA4ZjNmODQ0MDdmMDhhOTMwMjJAc3l6a2FsbGVyLmFw
cHNwb3RtYWlsLmNvbQo+IENsb3NlczogaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20vYnVn
P2V4dGlkPTgwOGYzZjg0NDA3ZjA4YTkzMDIyCj4gU2lnbmVkLW9mZi1ieTogR2hhbnNoeWFtIEFn
cmF3YWwgPGdoYW5zaHlhbTE4OThAZ21haWwuY29tPgo+IC0tLQo+ICAgZnMvamZzL2pmc19pbWFw
LmMgfCAzICsrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYg
LS1naXQgYS9mcy9qZnMvamZzX2ltYXAuYyBiL2ZzL2pmcy9qZnNfaW1hcC5jCj4gaW5kZXggMmVj
MzU4ODlhZDI0Li41MDg4ZGExM2U4ZjEgMTAwNjQ0Cj4gLS0tIGEvZnMvamZzL2pmc19pbWFwLmMK
PiArKysgYi9mcy9qZnMvamZzX2ltYXAuYwo+IEBAIC0xMzYwLDYgKzEzNjAsOSBAQCBpbnQgZGlB
bGxvYyhzdHJ1Y3QgaW5vZGUgKnBpcCwgYm9vbCBkaXIsIHN0cnVjdCBpbm9kZSAqaXApCj4gICAJ
aWYgKGFnbm8gPCAwIHx8IGFnbm8gPiBkbl9udW1hZykKPiAgIAkJcmV0dXJuIC1FSU87Cj4gICAK
PiArCWlmICh1bmxpa2VseShkbl9udW1hZyA+IE1BWEFHKSkKCkhpLAoKbG9va2luZyBhdCBvdGhl
ciBwbGFjZXMgd2l0aCBjaGVja3Mgd2l0aCBNQVhBRywgSSB3b25kZXIgaWYgaXQgc2hvdWxkIGJl
ID49PwoKQ0oKCj4gKwkJcmV0dXJuIC1FSU87Cj4gKwo+ICAgCWlmIChhdG9taWNfcmVhZCgmSkZT
X1NCSShwaXAtPmlfc2IpLT5ibWFwLT5kYl9hY3RpdmVbYWdub10pKSB7Cj4gICAJCS8qCj4gICAJ
CSAqIFRoZXJlIGlzIGFuIG9wZW4gZmlsZSBhY3RpdmVseSBncm93aW5nLiAgV2Ugd2FudCB0bwoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlz
Y3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0
Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNz
aW9uCg==
