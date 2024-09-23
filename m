Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5D897F1BE
	for <lists+jfs-discussion@lfdr.de>; Mon, 23 Sep 2024 22:45:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sspvm-0007rc-En;
	Mon, 23 Sep 2024 20:45:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <christophe.jaillet@wanadoo.fr>) id 1sspvl-0007rO-IZ
 for jfs-discussion@lists.sourceforge.net;
 Mon, 23 Sep 2024 20:45:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:Subject:From:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iV/9JBd2mWppZGg0Oqn0pi7BbFDFWIpng6L7w9taKt0=; b=kFjCmartp/3hx4K8M0y1jth8Ya
 C1sqJdbYnU7ZECoQJbFF1jjC34yWkEyvNZ0/A9WLUafKuv2ZO0FVT0oHmwdnv5h22sXM5EXh/SZf4
 uwkFJWj4819m8wLszz3ZNKtVyle4rlNbargZ2c6+rtY5LeJ4+ntwMKGKc+AFl7t2MDf0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc:To:
 Subject:From:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iV/9JBd2mWppZGg0Oqn0pi7BbFDFWIpng6L7w9taKt0=; b=PHbixEhuO+UtpMQ3frUD1abgIw
 C5aYGPPuJJXsVVQN4ZLEwL33QMdjsoMT9IW6uyBdllgRwon/jmgOhUXTt4z922Oc5N1QIc/SrERZh
 8sHNz2TOO9e2hRxvWTEP1NF+46zASclCnTAobnJzWc77Lr8z72nHJItQtHKK85HMmsXM=;
Received: from smtp-22.smtpout.orange.fr ([80.12.242.22]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sspvj-0008Jc-PW for jfs-discussion@lists.sourceforge.net;
 Mon, 23 Sep 2024 20:45:13 +0000
Received: from [192.168.1.37] ([90.11.132.44]) by smtp.orange.fr with ESMTPA
 id spvasjIY6OTuTspvbsvqOR; Mon, 23 Sep 2024 22:45:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
 s=t20230301; t=1727124304;
 bh=iV/9JBd2mWppZGg0Oqn0pi7BbFDFWIpng6L7w9taKt0=;
 h=Message-ID:Date:MIME-Version:From:Subject:To;
 b=Y3C7IevsQZ4FEiLlUrAQg+ITZwpE+QDT5bq81GzdzK/E5eR4GM0mkEHmNAgg4Pnaf
 UkxAeTz6nOfbQIDeXmxjBjwCAOCeIEEOANohToV5NIlFvLgBYU5rqyBXll5tE8ecO0
 WpaRBm5WcLEk4vU7f2glwSvQJpO5iQac8b+H3ZYVOExw0CRsYn0+5vmKOF928tfSXp
 blKJ5rA5fYLM7ZqkYlcOvo7DNcWYXilbznmZgpheb5AKwIq3YSV5VH6kA5/UrpSMKg
 MH1BavVZFPfDCj2gcCubGsfsHBw9PiExPDMFz8xp9hOfAkkfvj4QxJm1frCH7sOark
 zouhk5mXeSttA==
X-ME-Helo: [192.168.1.37]
X-ME-Auth: bWFyaW9uLmphaWxsZXRAd2FuYWRvby5mcg==
X-ME-Date: Mon, 23 Sep 2024 22:45:04 +0200
X-ME-IP: 90.11.132.44
Message-ID: <470de7f0-3f2d-444b-a949-9db6040cf371@wanadoo.fr>
Date: Mon, 23 Sep 2024 22:45:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ghanshyam Agrawal <ghanshyam1898@gmail.com>
References: <20240922110000.128650-1-ghanshyam1898@gmail.com>
 <c9f80af9-4cf0-4b6e-8c61-4b7a6f287cd9@wanadoo.fr>
 <CAG-BmocfstJNC-JDgtx93EJmg5kMANu4tVRbjqYtZ1CE+AEnEg@mail.gmail.com>
Content-Language: en-US, fr-FR
In-Reply-To: <CAG-BmocfstJNC-JDgtx93EJmg5kMANu4tVRbjqYtZ1CE+AEnEg@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Le 23/09/2024 à 05:35, Ghanshyam Agrawal a écrit : > On
    Sun, Sep 22, 2024 at 8:35 PM Christophe JAILLET > <christophe.jaillet@wanadoo.fr>
    wrote: >> >> Le 22/09/2024 à 13:00, Ghanshyam Agrawal a [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [80.12.242.22 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [80.12.242.22 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sspvj-0008Jc-PW
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
Cc: shaggy@kernel.org, brauner@kernel.org, ghandatmanas@gmail.com,
 eadavis@qq.com, jlayton@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org,
 syzbot+808f3f84407f08a93022@syzkaller.appspotmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

TGUgMjMvMDkvMjAyNCDDoCAwNTozNSwgR2hhbnNoeWFtIEFncmF3YWwgYSDDqWNyaXTCoDoKPiBP
biBTdW4sIFNlcCAyMiwgMjAyNCBhdCA4OjM14oCvUE0gQ2hyaXN0b3BoZSBKQUlMTEVUCj4gPGNo
cmlzdG9waGUuamFpbGxldEB3YW5hZG9vLmZyPiB3cm90ZToKPj4KPj4gTGUgMjIvMDkvMjAyNCDD
oCAxMzowMCwgR2hhbnNoeWFtIEFncmF3YWwgYSDDqWNyaXQgOgo+Pj4gSW4gc29tZSBjYXNlcywg
ZG5fbnVtYWcgbWF5IGJlIGdyZWF0ZXIgdGhhbiBNQVhBRyB3aGljaCBtYXkKPj4+IHJlc3VsdCBp
biBhbiBhcnJheS1pbmRleC1vdXQtb2YtYm91bmRzIGluIGRiTmV4dEFHLiBBZGRlZAo+Pj4gYSBj
aGVjayB0byByZXR1cm4gYW4gZXJyb3IgY29kZSBiZWZvcmUgd2UgY3Jhc2guCj4+Pgo+Pj4gUmVw
b3J0ZWQtYnk6IHN5emJvdCs4MDhmM2Y4NDQwN2YwOGE5MzAyMkBzeXprYWxsZXIuYXBwc3BvdG1h
aWwuY29tCj4+PiBDbG9zZXM6IGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL2J1Zz9leHRp
ZD04MDhmM2Y4NDQwN2YwOGE5MzAyMgo+Pj4gU2lnbmVkLW9mZi1ieTogR2hhbnNoeWFtIEFncmF3
YWwgPGdoYW5zaHlhbTE4OThAZ21haWwuY29tPgo+Pj4gLS0tCj4+PiAgICBmcy9qZnMvamZzX2lt
YXAuYyB8IDMgKysrCj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4+Pgo+
Pj4gZGlmZiAtLWdpdCBhL2ZzL2pmcy9qZnNfaW1hcC5jIGIvZnMvamZzL2pmc19pbWFwLmMKPj4+
IGluZGV4IDJlYzM1ODg5YWQyNC4uNTA4OGRhMTNlOGYxIDEwMDY0NAo+Pj4gLS0tIGEvZnMvamZz
L2pmc19pbWFwLmMKPj4+ICsrKyBiL2ZzL2pmcy9qZnNfaW1hcC5jCj4+PiBAQCAtMTM2MCw2ICsx
MzYwLDkgQEAgaW50IGRpQWxsb2Moc3RydWN0IGlub2RlICpwaXAsIGJvb2wgZGlyLCBzdHJ1Y3Qg
aW5vZGUgKmlwKQo+Pj4gICAgICAgIGlmIChhZ25vIDwgMCB8fCBhZ25vID4gZG5fbnVtYWcpCj4+
PiAgICAgICAgICAgICAgICByZXR1cm4gLUVJTzsKPj4+Cj4+PiArICAgICBpZiAodW5saWtlbHko
ZG5fbnVtYWcgPiBNQVhBRykpCj4+Cj4+IEhpLAo+Pgo+PiBsb29raW5nIGF0IG90aGVyIHBsYWNl
cyB3aXRoIGNoZWNrcyB3aXRoIE1BWEFHLCBJIHdvbmRlciBpZiBpdCBzaG91bGQgYmUgPj0/Cj4+
Cj4+IENKCj4+Cj4+PiArICAgICAgICAgICAgIHJldHVybiAtRUlPOwo+Pj4gKwo+Pj4gICAgICAg
IGlmIChhdG9taWNfcmVhZCgmSkZTX1NCSShwaXAtPmlfc2IpLT5ibWFwLT5kYl9hY3RpdmVbYWdu
b10pKSB7Cj4+PiAgICAgICAgICAgICAgICAvKgo+Pj4gICAgICAgICAgICAgICAgICogVGhlcmUg
aXMgYW4gb3BlbiBmaWxlIGFjdGl2ZWx5IGdyb3dpbmcuICBXZSB3YW50IHRvCj4+Cj4gCj4gSGVs
bG8gQ2hyaXN0b3BoZSwKPiAKPiBUaGFua3MgZm9yIHJldmlld2luZyBteSBjb2RlLiBJIGJlbGll
dmUgdGhlIGdyZWF0ZXIgdGhhbiBzeW1ib2wgSSBoYXZlCj4gc2V0IGlzIGNvcnJlY3QgaW4gdGhp
cyBjYXNlLiAKCkkgdGhpbmsgaXQncyBub3QuCgpJZiB5b3UgaGF2ZSAiaWYgKHVubGlrZWx5KGRu
X251bWFnID4gTUFYQUcpKSIsIHRoZW4KCgktIGRuX251bWFnIGNhbiBiZSA9IE1BWEFHCgktIFsy
XSAtIHNvLCBhZ25vIGNhbiBiZSA9IE1BWEFHIGFzIHdlbGwKCS0gWzNdIC0gYW5kLCBhY2Nlc3Np
bmcgbWVtb3J5IHBhc3QgdGhlIGVuZCBvZiB0aGUgYXJyYXkgd2lsbCBoYXBwZW4sIApiZWNhdXNl
IGRiX2FjdGl2ZSBpcyBhdG9taWNfdCBkYl9hY3RpdmVbTUFYQUddOwoJLSBCVUcKCk9yIEkgbWlz
cyBzb21ldGhpbmcgb2J2aW91cz8KCj4gQ2FuIHlvdSBwbGVhc2UgY2hlY2sgaXQgdGhvcm91Z2hs
eSBhbmQgbGV0bWUga25vdyB3bnkgaXQgc2hvdWxkIGJlID49ID8KCldlbGwsIHVzdWFsbHkgdGhp
bmdzIGRvbid0IHdvcmsgdGhhdCB3YXkuCgpZT1UgcHJvcG9zZSB0byBmaXggc29tZXRoaW5nLCB3
aGljaCBpcyBuaWNlLiBTbyBZT1Ugc2hvdWxkIGV4cGxhaW4gd2h5IAppdCBpcyBjb3JyZWN0LgoK
SWYgSSdtIGNvcnJlY3QsIHRoZSB3YXkgdG8gc2VlIHRoYXQgeW91ciBmaXggaXMgaW5jb21wbGV0
ZSBpcyBqdXN0IGluIAp0aGUgMyBvciA0IGxpbmVzIGp1c3QgYWJvdmUgYW5kIGJlbG93IHlvdXIg
Y2hhbmdlLgoKWW91J3ZlIGJlZW4gdG9sZCB3aGF0IGNvdWxkIGJlIHdyb25nLCB5b3UgY291bGQg
aGF2ZSBjaGVja2VkIHlvdXJzZWxmLiAKT3IgZXhwbGFpbmVkIHRoZSByZWFzb25pbmcgdGhhdCBt
YWtlcyB5b3UgdGhpbmsgaXQgaXMgY29ycmVjdC4KCgoKU29ycnkgaWYgbXkgYW5zd2VyIGxvb2tz
IHJ1ZGUsIGl0IGlzIG5vdCBteSBpbnRlbmQuIEkganVzdCByZWFkIHlvdXIgCmFuc3dlciBhcyAi
Y2FuIHlvdSBkbyBteSBob21lIHdvcmsgZm9yIG1lIiwgd2hpY2ggaXMgY2VydGFpbmx5IG5vdCB5
b3UgCmludGVuZCBlaXRoZXIuCgpTbywgbm8gaGFyZCBmZWxsaW5nLCBidXQgYSBiaXQgZGlzYXBw
b2ludGVkIGJ5IHRoZSBsYWNrIG9mIGN1cmlvc2l0eS4KCkNKCgo+IAo+IFRoYW5rcyAmIFJlZ2Fy
ZHMsCj4gR2hhbnNoeWFtIEFncmF3YWwKPiAKCgpbMV06IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4u
Y29tL2xpbnV4L3Y2LjExL3NvdXJjZS9mcy9qZnMvamZzX2ltYXAuYyNMMTM2MwoKWzJdOiBodHRw
czovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni4xMS9zb3VyY2UvZnMvamZzL2pmc19pbWFw
LmMjTDEzNjMKClszXTogaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuMTEvc291
cmNlL2ZzL2pmcy9qZnNfaW1hcC5jI0wxMzY2CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlz
Y3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5u
ZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
