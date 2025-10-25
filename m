Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A6CC129EF
	for <lists+jfs-discussion@lfdr.de>; Tue, 28 Oct 2025 03:04:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:In-Reply-To:Date:MIME-Version:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=2ZcweAvs4iLspe+4tcojMeY8zBi18Y4PFSA7MHegoBY=; b=BM6Ey6rugKymnNvUa7+zX4O/j6
	9CfzBGMp9X7fA5zsnfHBwY3+Qn+IXwNAIW6MJic81pw8gQk7dNHmV9vl1tIIpN8UF0Z9ka5fI1Hde
	lJswXxq2wDqaZ23dlZ85qTPz5bLY7zZl/wXYnQEU973K8qTNtU3yX7C6DZ/Lvplw/LA8=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vDZ2E-0002xd-NM;
	Tue, 28 Oct 2025 02:02:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3kPj8aAkbAMM178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1vCgzT-00007z-K4 for jfs-discussion@lists.sourceforge.net;
 Sat, 25 Oct 2025 16:19:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:From:
 Subject:Message-ID:In-Reply-To:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xDL5qUn8r7zj0sFG8H7qyEhZdijB3u/BoMNxYA4F7hU=; b=VkhPITJIegqwjNm2fft1xCdlTE
 9ElY00/csGZdrWGJ0EH+ycSEX122c58vEBjuAG8YI/NlLtyDcIABZontd8DnEFKX65GCUkGD5P0eA
 OIgRHseIRc4LgljRA7hXwo+CBkh9kcFtw3B3wDY+8rF58BlAc+8GiyEmUqTnXvIiuQqs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:From:Subject:Message-ID:
 In-Reply-To:Date:MIME-Version:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xDL5qUn8r7zj0sFG8H7qyEhZdijB3u/BoMNxYA4F7hU=; b=I
 ABQow2SDAStUMIRCwr6oMbyWYgVEBDEyAkjuqrpJA6ZmE7V99lapvNpurpTBmmPfkkcPZbJVGSqjN
 TP37WeVRP5ROvifRPXFp0138FXg7cH+77jiz3ABkmoFyYTFKPJGzFIbuftbD8iZkyErAJjEWvl1Dz
 Tp72tR//JsZeqVPE=;
Received: from mail-il1-f198.google.com ([209.85.166.198])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vCgzT-0003Ud-54 for jfs-discussion@lists.sourceforge.net;
 Sat, 25 Oct 2025 16:19:39 +0000
Received: by mail-il1-f198.google.com with SMTP id
 e9e14a558f8ab-430c1cbd1f2so37058445ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 25 Oct 2025 09:19:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761409168; x=1762013968;
 h=content-transfer-encoding:cc:to:from:subject:message-id:in-reply-to
 :date:mime-version:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xDL5qUn8r7zj0sFG8H7qyEhZdijB3u/BoMNxYA4F7hU=;
 b=URMlI+Q3jHI/883blP9WFi1eKb8QLOJu+2QrWKpbyS0ET3H0J/tccsq7P5E95Dh5AA
 3uZ017Zjo8LPMTeALM1yf2iMTOnUQ2fwZK6o/7g41zTjwM57bnk818qlNTN3jha5a+/u
 pYYzUoLwzW5PyfQ8qt1fxystAyqkrZrbf+cAnwmy8wp2HuqF8kGgyJzZre2Fw0vtztea
 PKy/4XVPFN4OwdHKHpN4gJD22yJQ5RsTMHDeH+GmguJeZgHGRbdWnA1V1R7uqpe8GXu5
 1yIrNwu0bbl7nAPPb9dAtXwC+I9UN2eulL2NWkA0yIlWwu2rVXK5BEGK4AJZGus/Cfq2
 2m5Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCW/9jXW6z065B48uxhw+kfwOtzbFq40GDPhdQhHPPURS91T0iu5V6WzW+efgnmeC5GRg1B71eiQEWn2gT7VIg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yz5xLsveCVe5FlRZdNwrqYpdkec/7BoKaxuzjMOJ5MR+nOFaXcD
 /JskkDhylfCs9ONYTlsjBWo/F/t8O44hVRt8e11Lt59HRLE7n/oR67JES9JSoXlXqx4JRXMijAW
 rfvpnw8TxtE2vB2zCgTrABYZsl4maDnxpQhU1a0LniODj1M/h1j0NkgotiDo=
X-Google-Smtp-Source: AGHT+IHyDU/FUDHCCq350lspC6NErVthfk4ehnVafDPOWHBjDawZElv4u2ug0d6cNWNJu99xYN/guv5PQJiajp22dXZ/SBHCYA4i
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:2307:b0:42f:a60a:8538 with SMTP id
 e9e14a558f8ab-430c52b5afemr394804655ab.16.1761409168407; Sat, 25 Oct 2025
 09:19:28 -0700 (PDT)
Date: Sat, 25 Oct 2025 09:19:28 -0700
In-Reply-To: <20251025160905.3857885-227-sashal@kernel.org>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <68fcf890.a70a0220.12011.0001.GAE@google.com>
To: sashal@kernel.org
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > From: Shaurya Rane <ssrane_b23@ee.vjti.ac.in> > > [
 Upstream
 commit 300b072df72694ea330c4c673c035253e07827b8 ] > > The transaction manager
 initialization in txInit() was not properly > initializing [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.198 listed in wl.mailspike.net]
X-Headers-End: 1vCgzT-0003Ud-54
X-Mailman-Approved-At: Tue, 28 Oct 2025 02:02:00 +0000
Subject: Re: [Jfs-discussion] [PATCH AUTOSEL 6.17-5.4] jfs: fix
 uninitialized waitqueue in transaction manager
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
From: syzbot via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: syzbot <syzbot@syzkaller.appspotmail.com>
Cc: sashal@kernel.org, shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 patches@lists.linux.dev, stable@vger.kernel.org, ssrane_b23@ee.vjti.ac.in,
 alexander.deucher@amd.com, alexandre.f.demers@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

PiBGcm9tOiBTaGF1cnlhIFJhbmUgPHNzcmFuZV9iMjNAZWUudmp0aS5hYy5pbj4KPgo+IFsgVXBz
dHJlYW0gY29tbWl0IDMwMGIwNzJkZjcyNjk0ZWEzMzBjNGM2NzNjMDM1MjUzZTA3ODI3YjggXQo+
Cj4gVGhlIHRyYW5zYWN0aW9uIG1hbmFnZXIgaW5pdGlhbGl6YXRpb24gaW4gdHhJbml0KCkgd2Fz
IG5vdCBwcm9wZXJseQo+IGluaXRpYWxpemluZyBUeEJsb2NrWzBdLndhaXRvciB3YWl0cXVldWUs
IGNhdXNpbmcgYSBjcmFzaCB3aGVuCj4gdHhFbmQoMCkgaXMgY2FsbGVkIG9uIHJlYWQtb25seSBm
aWxlc3lzdGVtcy4KPgo+IFdoZW4gYSBmaWxlc3lzdGVtIGlzIG1vdW50ZWQgcmVhZC1vbmx5LCB0
eEJlZ2luKCkgcmV0dXJucyB0aWQ9MCB0bwo+IGluZGljYXRlIG5vIHRyYW5zYWN0aW9uLiBIb3dl
dmVyLCB0eEVuZCgwKSBzdGlsbCBnZXRzIGNhbGxlZCBhbmQKPiB0cmllcyB0byBhY2Nlc3MgVHhC
bG9ja1swXS53YWl0b3IgdmlhIHRpZF90b190YmxvY2soMCksIGJ1dCB0aGlzCj4gd2FpdHF1ZXVl
IHdhcyBuZXZlciBpbml0aWFsaXplZCBiZWNhdXNlIHRoZSBpbml0aWFsaXphdGlvbiBsb29wCj4g
c3RhcnRlZCBhdCBpbmRleCAxIGluc3RlYWQgb2YgMC4KPgo+IFRoaXMgY2F1c2VzIGEgJ25vbi1z
dGF0aWMga2V5JyBsb2NrZGVwIHdhcm5pbmcgYW5kIHN5c3RlbSBjcmFzaDoKPiAgIElORk86IHRy
eWluZyB0byByZWdpc3RlciBub24tc3RhdGljIGtleSBpbiB0eEVuZAo+Cj4gRml4IGJ5IGVuc3Vy
aW5nIGFsbCB0cmFuc2FjdGlvbiBibG9ja3MgaW5jbHVkaW5nIFR4QmxvY2tbMF0gaGF2ZQo+IHRo
ZWlyIHdhaXRxdWV1ZXMgcHJvcGVybHkgaW5pdGlhbGl6ZWQgZHVyaW5nIHR4SW5pdCgpLgo+Cj4g
UmVwb3J0ZWQtYnk6IHN5emJvdCtjNGYzNDYyZDhiMmFkNzk3N2JlYUBzeXprYWxsZXIuYXBwc3Bv
dG1haWwuY29tCj4KPiBTaWduZWQtb2ZmLWJ5OiBTaGF1cnlhIFJhbmUgPHNzcmFuZV9iMjNAZWUu
dmp0aS5hYy5pbj4KPiBTaWduZWQtb2ZmLWJ5OiBEYXZlIEtsZWlrYW1wIDxkYXZlLmtsZWlrYW1w
QG9yYWNsZS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwu
b3JnPgo+IC0tLQo+Cj4gTExNIEdlbmVyYXRlZCBleHBsYW5hdGlvbnMsIG1heSBiZSBjb21wbGV0
ZWx5IGJvZ3VzOgo+Cj4gWUVTCj4gLSBgdHhJbml0KClgIHByZXZpb3VzbHkgc2tpcHBlZCBpbmRl
eCAwIHdoZW4gcHJpbWluZyB0aGUgYHRibG9ja2Agd2FpdAo+ICAgcXVldWVzLCBzbyBgVHhCbG9j
a1swXS53YWl0b3JgIHN0YXllZCB1bmluaXRpYWxpemVkCj4gICAoYGZzL2pmcy9qZnNfdHhubWdy
LmM6MjcwLTI4NGAgYmVmb3JlIHRoZSBwYXRjaCkuIFdoZW4gdGhlIGZpbGVzeXN0ZW0KPiAgIGlz
IG1vdW50ZWQgcmVhZC1vbmx5LCBgdHhCZWdpbigpYCBsZWdpdGltYXRlbHkgcmV0dXJucyBgdGlk
ID09IDBgCj4gICAoYGZzL2pmcy9qZnNfdHhubWdyLmM6MzQ4LTM1NGApLCB5ZXQgZXZlcnkgY2Fs
bGVyIHN0aWxsIGV4ZWN1dGVzCj4gICBgdHhFbmQodGlkKWAuIGB0eEVuZCgpYCBpbW1lZGlhdGVs
eSBjYWxscyBgVFhOX1dBS0VVUCgmdGJsay0+d2FpdG9yKWAKPiAgIG9uIHRoYXQgcmVzZXJ2ZWQg
ZW50cnkgKGBmcy9qZnMvamZzX3R4bm1nci5jOjUwMC01MDZgKSwgd2hpY2ggdHJpcHMKPiAgIGxv
Y2tkZXAgKOKAnHRyeWluZyB0byByZWdpc3RlciBub24tc3RhdGljIGtleeKAnSkgYW5kIGNhbiBw
YW5pYyB0aGUKPiAgIHN5c3RlbSwgZXhhY3RseSBhcyByZXBvcnRlZCBieSBzeXpib3QuCj4gLSBU
aGUgZml4IGVuc3VyZXMgYm90aCBgd2FpdG9yYCBhbmQgYGdjd2FpdGAgYXJlIGluaXRpYWxpemVk
IGZvciBhbGwKPiAgIGB0YmxvY2tgcywgaW5jbHVkaW5nIHRoZSByZXNlcnZlZCBzbG90IDAsIGJ5
IHJ1bm5pbmcgYSBkZWRpY2F0ZWQgbG9vcAo+ICAgZnJvbSAwLi5uVHhCbG9jay0xIGJlZm9yZSB3
aXJpbmcgdXAgdGhlIGZyZWVsaXN0Cj4gICAoYGZzL2pmcy9qZnNfdHhubWdyLmM6Mjc1LTI4M2Ap
LiBObyBvdGhlciBiZWhhdmlvdXIgY2hhbmdlcyBvY2N1cjogdGhlCj4gICBmcmVlbGlzdCBwb3B1
bGF0aW9uIGZvciBpbmRpY2VzIOKJpTEgcmVtYWlucyBpZGVudGljYWwsIGFuZCBzbG90IDAgaXMK
PiAgIHN0aWxsIGV4Y2x1ZGVkIGZyb20gYWxsb2NhdGlvbi4KPiAtIFRoZSBidWcgd2FzIGludHJv
ZHVjZWQgd2hlbiBgdHhCZWdpbigpYCBzdGFydGVkIHJldHVybmluZyAwIGZvciByZWFkLQo+ICAg
b25seSBtb3VudHMgKGNvbW1pdCA5NWUyYjM1MmMwM2IwYTg2LCBhbHJlYWR5IGluIDYuNisgc3Rh
YmxlKS4gVGh1cwo+ICAgZXZlcnkgc3VwcG9ydGVkIHN0YWJsZSB0cmVlIHRoYXQgY29udGFpbnMg
dGhhdCBjaGFuZ2UgaXMgc3VzY2VwdGlibGUKPiAgIHRvIGFuIGltbWVkaWF0ZSBrZXJuZWwgY3Jh
c2ggd2hlbmV2ZXIgYHR4RW5kKDApYCBleGVjdXRlc+KAlHRyaWdnZXJhYmxlCj4gICBieSByb3V0
aW5lIG1ldGFkYXRhIG9wZXJhdGlvbnMgb24gYSByZWFkLW9ubHkgSkZTIHZvbHVtZS4KPiAtIFRo
ZSBwYXRjaCBpcyB0aW55LCBsb2NhbGl6ZWQgdG8gaW5pdGlhbGl6YXRpb24sIGFuZCBjYXJyaWVz
IG5lZ2xpZ2libGUKPiAgIHJlZ3Jlc3Npb24gcmlzazogaW5pdGlhbGl6aW5nIGEgd2FpdHF1ZXVl
IGhlYWQgdHdpY2UgaXMgc2FmZSwgYW5kIG5vCj4gICBjb25jdXJyZW50IGFjdGl2aXR5IGV4aXN0
cyBkdXJpbmcgYHR4SW5pdCgpYC4gVGhlcmUgYXJlIG5vCj4gICBwcmVyZXF1aXNpdGUgZGVwZW5k
ZW5jaWVzLgo+IC0gQmVjYXVzZSB0aGlzIHJlc29sdmVzIGEgcmVhbCwgdXNlci12aXNpYmxlIGNy
YXNoIGludHJvZHVjZWQgaW4KPiAgIGN1cnJlbnRseS1zdXBwb3J0ZWQgc3RhYmxlIHJlbGVhc2Vz
IGFuZCBkb2VzIHNvIHdpdGggYSBtaW5pbWFsLCB3ZWxsLQo+ICAgc2NvcGVkIGNoYW5nZSwgaXQg
c3F1YXJlbHkgbWVldHMgdGhlIHN0YWJsZSBiYWNrcG9ydCBjcml0ZXJpYS4KPgo+ICBmcy9qZnMv
amZzX3R4bm1nci5jIHwgOSArKysrKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKSwgNCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9mcy9qZnMvamZzX3R4bm1nci5j
IGIvZnMvamZzL2pmc190eG5tZ3IuYwo+IGluZGV4IGJlMTdlM2M0MzU4MmYuLjc4NDBhMDNlNWJj
YjcgMTAwNjQ0Cj4gLS0tIGEvZnMvamZzL2pmc190eG5tZ3IuYwo+ICsrKyBiL2ZzL2pmcy9qZnNf
dHhubWdyLmMKPiBAQCAtMjcyLDE0ICsyNzIsMTUgQEAgaW50IHR4SW5pdCh2b2lkKQo+ICAJaWYg
KFR4QmxvY2sgPT0gTlVMTCkKPiAgCQlyZXR1cm4gLUVOT01FTTsKPiAgCj4gLQlmb3IgKGsgPSAx
OyBrIDwgblR4QmxvY2sgLSAxOyBrKyspIHsKPiAtCQlUeEJsb2NrW2tdLm5leHQgPSBrICsgMTsK
PiArCWZvciAoayA9IDA7IGsgPCBuVHhCbG9jazsgaysrKSB7Cj4gIAkJaW5pdF93YWl0cXVldWVf
aGVhZCgmVHhCbG9ja1trXS5nY3dhaXQpOwo+ICAJCWluaXRfd2FpdHF1ZXVlX2hlYWQoJlR4Qmxv
Y2tba10ud2FpdG9yKTsKPiAgCX0KPiArCj4gKwlmb3IgKGsgPSAxOyBrIDwgblR4QmxvY2sgLSAx
OyBrKyspIHsKPiArCQlUeEJsb2NrW2tdLm5leHQgPSBrICsgMTsKPiArCX0KPiAgCVR4QmxvY2tb
a10ubmV4dCA9IDA7Cj4gLQlpbml0X3dhaXRxdWV1ZV9oZWFkKCZUeEJsb2NrW2tdLmdjd2FpdCk7
Cj4gLQlpbml0X3dhaXRxdWV1ZV9oZWFkKCZUeEJsb2NrW2tdLndhaXRvcik7Cj4gIAo+ICAJVHhB
bmNob3IuZnJlZXRpZCA9IDE7Cj4gIAlpbml0X3dhaXRxdWV1ZV9oZWFkKCZUeEFuY2hvci5mcmVl
d2FpdCk7Cj4gLS0gCj4gMi41MS4wCj4KCkkgc2VlIHRoZSBjb21tYW5kIGJ1dCBjYW4ndCBmaW5k
IHRoZSBjb3JyZXNwb25kaW5nIGJ1Zy4KVGhlIGVtYWlsIGlzIHNlbnQgdG8gIHN5emJvdCtIQVNI
QHN5emthbGxlci5hcHBzcG90bWFpbC5jb20gYWRkcmVzcwpidXQgdGhlIEhBU0ggZG9lcyBub3Qg
Y29ycmVzcG9uZCB0byBhbnkga25vd24gYnVnLgpQbGVhc2UgZG91YmxlIGNoZWNrIHRoZSBhZGRy
ZXNzLgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpK
ZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1k
aXNjdXNzaW9uCg==
