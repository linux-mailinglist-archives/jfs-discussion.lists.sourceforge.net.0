Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B0A6D27A0
	for <lists+jfs-discussion@lfdr.de>; Fri, 31 Mar 2023 20:14:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1piJGZ-0005xI-Vk;
	Fri, 31 Mar 2023 18:14:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <song@kernel.org>) id 1piJGY-0005xB-GL
 for jfs-discussion@lists.sourceforge.net;
 Fri, 31 Mar 2023 18:14:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cnyyTNSoAZhzH+Cr4XZCGYVN7DGnCBwMV6jLESx5x3U=; b=O3HQekBQsYM3liwNRaMQch0s9Z
 Tt/KCAC/K6HEtQPfHrdqSzbQlsrEy0DNmnHSjqgelS0i211kawEOnhesRwAQm9Iwc8umQbJltYB1f
 rYptaAvAoK5p+Ajh2yfDMSZiZVd/UKIg2NPoEUX0IZR8F1HB3IMd/M6Q7HW64EmZv5nc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cnyyTNSoAZhzH+Cr4XZCGYVN7DGnCBwMV6jLESx5x3U=; b=OEfzUouTpelk1014WljslIYqXT
 DleT7eJSxLK4nAiupboO8X96b1JaKBDmgUFs+M3TNMttCYBwVhVRdFI/bv5FOSHE0ZCpLeJlHmRh8
 KqqDNf6OaxVJUzAVhWJ0ZONTKwaJXuWvJ3zMVcqVi30OldIj3zfycG4g0wSpwMD6ccNc=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1piJGO-0001aa-2k for jfs-discussion@lists.sourceforge.net;
 Fri, 31 Mar 2023 18:14:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id AB22362B27
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 31 Mar 2023 18:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92DC9C433A8
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 31 Mar 2023 18:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1680286445;
 bh=gAgmbH9ftu5DAZPB9SoVGvrkWv8Y2dxMgr70HbBIrh0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=u2UyJ61FTV2+znZWsPlsLmvw7sSO3LeRWInykbiXqNJPkVJ40IoNP6aBsJ2TWeaQo
 q4hvnrrVkPXWhp+7v0LVHn2eHJRHdMeB2M8gGT9u2q7y/jHTOGvX0c3uaSmH//NvBI
 NAfAKgPsBu+QPzmtzJUt5QWiZB71tmWY0DG/A+kIwHiExDVDu+tg4eoSY1wTe4d2lI
 lIqqU5MzNf6ii6c4tioA47PHAuGJKnj1E8lOf3g/+VX7YlXkc0r5gJjBj5iEazVvfx
 uKIKMzuy2JcSrnDgai8EOWQ6XQhty1enPVqZRvFJEEC48cy1uMs1Es4DpzFbe5p93B
 FF/gFfYitQwzg==
Received: by mail-lf1-f50.google.com with SMTP id g17so30027604lfv.4
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 31 Mar 2023 11:14:05 -0700 (PDT)
X-Gm-Message-State: AAQBX9fIktoZFnTe5ar7fBskq4NFTbX/lDIK0vjEeZEsXxWTL58JUQ1y
 h9Hs4h8/YP6vV/KFBbMODzSm8pyNPWWdS4uVb2E=
X-Google-Smtp-Source: AKy350bGczgf8cOPQ3B8DjpL0OvNqhqJf0gVtuLTkWI0qZ++fzJqZuNXbM/Tji+xZXn5DWwX7QOe8uol0L5QJx5bU4Q=
X-Received: by 2002:ac2:5610:0:b0:4dd:a4e1:4861 with SMTP id
 v16-20020ac25610000000b004dda4e14861mr8251248lfd.3.1680286443592; Fri, 31 Mar
 2023 11:14:03 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1680172791.git.johannes.thumshirn@wdc.com>
 <8b8a3bb2db8c5183ef36c1810f2ac776ac526327.1680172791.git.johannes.thumshirn@wdc.com>
In-Reply-To: <8b8a3bb2db8c5183ef36c1810f2ac776ac526327.1680172791.git.johannes.thumshirn@wdc.com>
From: Song Liu <song@kernel.org>
Date: Fri, 31 Mar 2023 11:13:51 -0700
X-Gmail-Original-Message-ID: <CAPhsuW7a+mpn+VprfA2mC5Fc+M9BFq8i6d-y+-o5G1u5dOsk2Q@mail.gmail.com>
Message-ID: <CAPhsuW7a+mpn+VprfA2mC5Fc+M9BFq8i6d-y+-o5G1u5dOsk2Q@mail.gmail.com>
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Mar 30, 2023 at 3:44 AM Johannes Thumshirn <johannes.thumshirn@wdc.com>
    wrote: > > Check if adding pages to resync bio fails and if bail out. > >
    As the comment above suggests this cannot ha [...] 
 
 Content analysis details:   (-5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1piJGO-0001aa-2k
Subject: Re: [Jfs-discussion] [PATCH v2 17/19] md: raid1: check if adding
 pages to resync bio fails
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-raid@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, cluster-devel@redhat.com,
 Chaitanya Kulkarni <kch@nvidia.com>, Andreas Gruenbacher <agruenba@redhat.com>,
 Dave Kleikamp <shaggy@kernel.org>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Mike Snitzer <snitzer@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 David Sterba <dsterba@suse.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-btrfs@vger.kernel.org, Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVGh1LCBNYXIgMzAsIDIwMjMgYXQgMzo0NOKAr0FNIEpvaGFubmVzIFRodW1zaGlybgo8am9o
YW5uZXMudGh1bXNoaXJuQHdkYy5jb20+IHdyb3RlOgo+Cj4gQ2hlY2sgaWYgYWRkaW5nIHBhZ2Vz
IHRvIHJlc3luYyBiaW8gZmFpbHMgYW5kIGlmIGJhaWwgb3V0Lgo+Cj4gQXMgdGhlIGNvbW1lbnQg
YWJvdmUgc3VnZ2VzdHMgdGhpcyBjYW5ub3QgaGFwcGVuLCBXQVJOIGlmIGl0IGFjdHVhbGx5Cj4g
aGFwcGVucy4KPgo+IFRoaXMgd2F5IHdlIGNhbiBtYXJrIGJpb19hZGRfcGFnZXMgYXMgX19tdXN0
X2NoZWNrLgo+Cj4gU2lnbmVkLW9mZi1ieTogSm9oYW5uZXMgVGh1bXNoaXJuIDxqb2hhbm5lcy50
aHVtc2hpcm5Ad2RjLmNvbT4KPiBSZXZpZXdlZC1ieTogRGFtaWVuIExlIE1vYWwgPGRhbWllbi5s
ZW1vYWxAb3BlbnNvdXJjZS53ZGMuY29tPgo+IC0tLQo+ICBkcml2ZXJzL21kL3JhaWQxLTEwLmMg
fCAgNyArKysrKystCj4gIGRyaXZlcnMvbWQvcmFpZDEwLmMgICB8IDEyICsrKysrKysrKystLQo+
ICAyIGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9tZC9yYWlkMS0xMC5jIGIvZHJpdmVycy9tZC9yYWlkMS0xMC5j
Cj4gaW5kZXggZTYxZjZjYWQ0ZTA4Li5jMjFiNmMxNjg3NTEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9tZC9yYWlkMS0xMC5jCj4gKysrIGIvZHJpdmVycy9tZC9yYWlkMS0xMC5jCj4gQEAgLTEwNSw3
ICsxMDUsMTIgQEAgc3RhdGljIHZvaWQgbWRfYmlvX3Jlc2V0X3Jlc3luY19wYWdlcyhzdHJ1Y3Qg
YmlvICpiaW8sIHN0cnVjdCByZXN5bmNfcGFnZXMgKnJwLAo+ICAgICAgICAgICAgICAgICAgKiB3
b24ndCBmYWlsIGJlY2F1c2UgdGhlIHZlYyB0YWJsZSBpcyBiaWcKPiAgICAgICAgICAgICAgICAg
ICogZW5vdWdoIHRvIGhvbGQgYWxsIHRoZXNlIHBhZ2VzCj4gICAgICAgICAgICAgICAgICAqLwoK
V2Uga25vdyB0aGVzZSB3b24ndCBmYWlsLiBTaGFsbCB3ZSBqdXN0IHVzZSBfX2Jpb19hZGRfcGFn
ZT8KClRoYW5rcywKU29uZwoKPiAtICAgICAgICAgICAgICAgYmlvX2FkZF9wYWdlKGJpbywgcGFn
ZSwgbGVuLCAwKTsKPiArICAgICAgICAgICAgICAgaWYgKFdBUk5fT04oIWJpb19hZGRfcGFnZShi
aW8sIHBhZ2UsIGxlbiwgMCkpKSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgYmlvLT5iaV9z
dGF0dXMgPSBCTEtfU1RTX1JFU09VUkNFOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIGJpb19l
bmRpbyhiaW8pOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVybjsKPiArICAgICAgICAg
ICAgICAgfQo+ICsKPiAgICAgICAgICAgICAgICAgc2l6ZSAtPSBsZW47Cj4gICAgICAgICB9IHdo
aWxlIChpZHgrKyA8IFJFU1lOQ19QQUdFUyAmJiBzaXplID4gMCk7Cj4gIH0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9tZC9yYWlkMTAuYyBiL2RyaXZlcnMvbWQvcmFpZDEwLmMKPiBpbmRleCA2YzY2
MzU3ZjkyZjUuLjU2ODJkYmE1MmZkMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21kL3JhaWQxMC5j
Cj4gKysrIGIvZHJpdmVycy9tZC9yYWlkMTAuYwo+IEBAIC0zODA4LDcgKzM4MDgsMTEgQEAgc3Rh
dGljIHNlY3Rvcl90IHJhaWQxMF9zeW5jX3JlcXVlc3Qoc3RydWN0IG1kZGV2ICptZGRldiwgc2Vj
dG9yX3Qgc2VjdG9yX25yLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAqIHdvbid0IGZhaWwg
YmVjYXVzZSB0aGUgdmVjIHRhYmxlIGlzIGJpZyBlbm91Z2gKPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgKiB0byBob2xkIGFsbCB0aGVzZSBwYWdlcwo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAqLwo+IC0gICAgICAgICAgICAgICAgICAgICAgIGJpb19hZGRfcGFnZShiaW8sIHBhZ2UsIGxl
biwgMCk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgaWYgKFdBUk5fT04oIWJpb19hZGRfcGFn
ZShiaW8sIHBhZ2UsIGxlbiwgMCkpKSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBiaW8tPmJpX3N0YXR1cyA9IEJMS19TVFNfUkVTT1VSQ0U7Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBiaW9fZW5kaW8oYmlvKTsKPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGdvdG8gZ2l2ZXVwOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIH0KPiAgICAgICAg
ICAgICAgICAgfQo+ICAgICAgICAgICAgICAgICBucl9zZWN0b3JzICs9IGxlbj4+OTsKPiAgICAg
ICAgICAgICAgICAgc2VjdG9yX25yICs9IGxlbj4+OTsKPiBAQCAtNDk4OSw3ICs0OTkzLDExIEBA
IHN0YXRpYyBzZWN0b3JfdCByZXNoYXBlX3JlcXVlc3Qoc3RydWN0IG1kZGV2ICptZGRldiwgc2Vj
dG9yX3Qgc2VjdG9yX25yLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAqIHdvbid0IGZhaWwg
YmVjYXVzZSB0aGUgdmVjIHRhYmxlIGlzIGJpZyBlbm91Z2gKPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgKiB0byBob2xkIGFsbCB0aGVzZSBwYWdlcwo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAqLwo+IC0gICAgICAgICAgICAgICAgICAgICAgIGJpb19hZGRfcGFnZShiaW8sIHBhZ2UsIGxl
biwgMCk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgaWYgKFdBUk5fT04oIWJpb19hZGRfcGFn
ZShiaW8sIHBhZ2UsIGxlbiwgMCkpKSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBiaW8tPmJpX3N0YXR1cyA9IEJMS19TVFNfUkVTT1VSQ0U7Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBiaW9fZW5kaW8oYmlvKTsKPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHJldHVybiBzZWN0b3JzX2RvbmU7IC8qIFhYWDogaXMgdGhpcyBjb3JyZWN0PyAqLwo+
ICsgICAgICAgICAgICAgICAgICAgICAgIH0KPiAgICAgICAgICAgICAgICAgfQo+ICAgICAgICAg
ICAgICAgICBzZWN0b3JfbnIgKz0gbGVuID4+IDk7Cj4gICAgICAgICAgICAgICAgIG5yX3NlY3Rv
cnMgKz0gbGVuID4+IDk7Cj4gLS0KPiAyLjM5LjIKPgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMt
ZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
