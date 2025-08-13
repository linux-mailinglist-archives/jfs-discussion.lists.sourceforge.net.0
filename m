Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0546B3A447
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Aug 2025 17:25:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Np4FwtqvRrC5KTaV4sy4vwAFUG3n3eC2QbrT5PlMlZk=; b=jC7lt7fBaA+BpNZBzaQHTlnP1j
	y6KClXZNpla3fHWIOtJd5SnGd684cjZQZArOK3a0NbcL7UWAHknDVpOfsEraKws+OPqpsyU6oYVZX
	PAyOybjgLYJWFq4xoz84N4Ao5/odb7usKng7d5TZH852VL3Vwqe1lrIbnxD9o+M8ear0=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ureUT-0005Fi-9O;
	Thu, 28 Aug 2025 15:24:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lance.yang@linux.dev>) id 1um3gK-0003EQ-1u
 for jfs-discussion@lists.sourceforge.net;
 Wed, 13 Aug 2025 05:05:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=87bLiKw1h579sXw+ErVi2X85NzXrARI80WO5rF5C6xU=; b=mI6+rzzTekrBLWqYBsV0pMDUnM
 GKiQZHA2EMolJSwfng/hFzzOiP2YpsgKfGXCLbdoSL+AxITZheLRRnsxCS3iwTkaXh+xKeM2mpNvK
 jlTKY1+1q0npoSeKh7hwo59vC36YXLBPeXISyLFSYNNjHAubDXnhj8ROp82huHkz3Tt0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=87bLiKw1h579sXw+ErVi2X85NzXrARI80WO5rF5C6xU=; b=Wiz3wg/JfCjtvACkSs2qFV8nHn
 WtLmKmvZfYhUKurrM6PBH5UNUgaqUTymfAd/02QfVCuZjP5Z6KUzl8QuDIf6FAnZcB1e0C65MAZdw
 bcVlGwjOFDh7Z1AhmVu2+s/Rsrn2+kF0M6xsYihW3zlh97/ibJGun9tz0lLCSbV/v1pY=;
Received: from out-182.mta0.migadu.com ([91.218.175.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1um3gI-0006Qt-Cs for jfs-discussion@lists.sourceforge.net;
 Wed, 13 Aug 2025 05:05:47 +0000
X-Forwarded-Encrypted: i=1;
 AJvYcCUP6Np/48YHG2RUTYU5kVh31Jh53Dsb2DWyHa0/PMvBCom4SUwyQSXL6j4KDjNAOjUF9Iz0XxCdFx9iNlLkMA==@lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1755061539;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=87bLiKw1h579sXw+ErVi2X85NzXrARI80WO5rF5C6xU=;
 b=OTqa5SusVm1D8RGOLUglr4tRkBjPnEZ+oXk8/JWIFizdKga9dSgnLmH/gVLM8CyQzwzH3V
 Mr0zDp4SE0h8OkqXEg7N1/tIp0Aqdmt9UKvBSpQy5JRSgDrMN56/5WNs3VIDHedILHTX6j
 ZsSZAZUsE3e6U+IO4LLQT13ac8oWIuI=
X-Gm-Message-State: AOJu0YwQDVJStp5zAfGRDdRl33gztMNpZi3/9Zuq+275bYQUMk+rRHr6
 IfznxeAr4UqHuCPjdyQFWPLNEJWaQdn/qocXrrpABrwK8ovJCy2Cs4wI82LJwebFvmz/egaEOFn
 dYIttN43bTR7IPhRg32MNgEjjyA5LtoQ=
X-Google-Smtp-Source: AGHT+IGZEPRXKg3wTS4iOnxLeW0VcVJpSHw/Siwyoa1WzS8WxyYOyRd8JzJTNVHXWXH3rQ3YpjAcT1JHiZ4LgeKLzSs=
X-Received: by 2002:a05:6214:246e:b0:709:31f8:fd96 with SMTP id
 6a1803df08f44-709e8865a26mr19274996d6.20.1755061536500; Tue, 12 Aug 2025
 22:05:36 -0700 (PDT)
MIME-Version: 1.0
References: <20250811143949.1117439-1-david@redhat.com>
 <20250811143949.1117439-2-david@redhat.com>
In-Reply-To: <20250811143949.1117439-2-david@redhat.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
Date: Wed, 13 Aug 2025 13:05:22 +0800
X-Gmail-Original-Message-ID: <CABzRoyYU2yOuGQskCAG_gzKiQwR6uM9eAYqOOCoQj+Xv=r163A@mail.gmail.com>
X-Gm-Features: Ac12FXz5RRcASyIjWC2h4OdZEnpLc7e6olfF88c8Jo2nErMh7OQ3VSRS5jfjM-I
Message-ID: <CABzRoyYU2yOuGQskCAG_gzKiQwR6uM9eAYqOOCoQj+Xv=r163A@mail.gmail.com>
To: David Hildenbrand <david@redhat.com>
X-Migadu-Flow: FLOW_OUT
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Aug 11,
 2025 at 10:47 PM David Hildenbrand <david@redhat.com>
 wrote: > [...] > +++ b/mm/migrate.c > @@ -1176, 16 +1176,
 6 @@ static int migrate_folio_unmap(new_folio_t
 get_new_folio, > bool lock [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1um3gI-0006Qt-Cs
X-Mailman-Approved-At: Thu, 28 Aug 2025 15:24:39 +0000
Subject: Re: [Jfs-discussion] [PATCH v1 1/2] mm/migrate: remove
 MIGRATEPAGE_UNMAP
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
From: Lance Yang via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Lance Yang <lance.yang@linux.dev>
Cc: linux-aio@kvack.org, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, "Michael S. Tsirkin" <mst@redhat.com>,
 Jason Wang <jasowang@redhat.com>, linux-mm@kvack.org,
 Ying Huang <ying.huang@linux.alibaba.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 Madhavan Srinivasan <maddy@linux.ibm.com>, Rakie Kim <rakie.kim@sk.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Alistair Popple <apopple@nvidia.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 =?UTF-8?Q?Eugenio_P=C3=A9rez?= <eperezma@redhat.com>, Zi Yan <ziy@nvidia.com>,
 Josef Bacik <josef@toxicpanda.com>, Gregory Price <gourry@gourry.net>,
 Byungchul Park <byungchul@sk.com>, Arnd Bergmann <arnd@arndb.de>,
 Dave Kleikamp <shaggy@kernel.org>, virtualization@lists.linux.dev,
 Nicholas Piggin <npiggin@gmail.com>,
 Jerrin Shaji George <jerrin.shaji-george@broadcom.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Sterba <dsterba@suse.com>,
 Oscar Salvador <osalvador@suse.de>, Joshua Hahn <joshua.hahnjy@gmail.com>,
 Christian Brauner <brauner@kernel.org>, Chris Mason <clm@fb.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Muchun Song <muchun.song@linux.dev>, linux-kernel@vger.kernel.org,
 Minchan Kim <minchan@kernel.org>, Benjamin LaHaise <bcrl@kvack.org>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gTW9uLCBBdWcgMTEsIDIwMjUgYXQgMTA6NDfigK9QTSBEYXZpZCBIaWxkZW5icmFuZCA8ZGF2
aWRAcmVkaGF0LmNvbT4gd3JvdGU6Cj4KWy4uLl0KPiArKysgYi9tbS9taWdyYXRlLmMKPiBAQCAt
MTE3NiwxNiArMTE3Niw2IEBAIHN0YXRpYyBpbnQgbWlncmF0ZV9mb2xpb191bm1hcChuZXdfZm9s
aW9fdCBnZXRfbmV3X2ZvbGlvLAo+ICAgICAgICAgYm9vbCBsb2NrZWQgPSBmYWxzZTsKPiAgICAg
ICAgIGJvb2wgZHN0X2xvY2tlZCA9IGZhbHNlOwo+Cj4gLSAgICAgICBpZiAoZm9saW9fcmVmX2Nv
dW50KHNyYykgPT0gMSkgewo+IC0gICAgICAgICAgICAgICAvKiBGb2xpbyB3YXMgZnJlZWQgZnJv
bSB1bmRlciB1cy4gU28gd2UgYXJlIGRvbmUuICovCj4gLSAgICAgICAgICAgICAgIGZvbGlvX2Ns
ZWFyX2FjdGl2ZShzcmMpOwo+IC0gICAgICAgICAgICAgICBmb2xpb19jbGVhcl91bmV2aWN0YWJs
ZShzcmMpOwo+IC0gICAgICAgICAgICAgICAvKiBmcmVlX3BhZ2VzX3ByZXBhcmUoKSB3aWxsIGNs
ZWFyIFBHX2lzb2xhdGVkLiAqLwo+IC0gICAgICAgICAgICAgICBsaXN0X2RlbCgmc3JjLT5scnUp
Owo+IC0gICAgICAgICAgICAgICBtaWdyYXRlX2ZvbGlvX2RvbmUoc3JjLCByZWFzb24pOwo+IC0g
ICAgICAgICAgICAgICByZXR1cm4gTUlHUkFURVBBR0VfU1VDQ0VTUzsKPiAtICAgICAgIH0KPiAt
Cj4gICAgICAgICBkc3QgPSBnZXRfbmV3X2ZvbGlvKHNyYywgcHJpdmF0ZSk7Cj4gICAgICAgICBp
ZiAoIWRzdCkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07Cj4gQEAgLTEyNzUsNyAr
MTI2NSw3IEBAIHN0YXRpYyBpbnQgbWlncmF0ZV9mb2xpb191bm1hcChuZXdfZm9saW9fdCBnZXRf
bmV3X2ZvbGlvLAo+Cj4gICAgICAgICBpZiAodW5saWtlbHkocGFnZV9oYXNfbW92YWJsZV9vcHMo
JnNyYy0+cGFnZSkpKSB7Cj4gICAgICAgICAgICAgICAgIF9fbWlncmF0ZV9mb2xpb19yZWNvcmQo
ZHN0LCBvbGRfcGFnZV9zdGF0ZSwgYW5vbl92bWEpOwo+IC0gICAgICAgICAgICAgICByZXR1cm4g
TUlHUkFURVBBR0VfVU5NQVA7Cj4gKyAgICAgICAgICAgICAgIHJldHVybiAwOwo+ICAgICAgICAg
fQo+Cj4gICAgICAgICAvKgo+IEBAIC0xMzA1LDcgKzEyOTUsNyBAQCBzdGF0aWMgaW50IG1pZ3Jh
dGVfZm9saW9fdW5tYXAobmV3X2ZvbGlvX3QgZ2V0X25ld19mb2xpbywKPgo+ICAgICAgICAgaWYg
KCFmb2xpb19tYXBwZWQoc3JjKSkgewo+ICAgICAgICAgICAgICAgICBfX21pZ3JhdGVfZm9saW9f
cmVjb3JkKGRzdCwgb2xkX3BhZ2Vfc3RhdGUsIGFub25fdm1hKTsKPiAtICAgICAgICAgICAgICAg
cmV0dXJuIE1JR1JBVEVQQUdFX1VOTUFQOwo+ICsgICAgICAgICAgICAgICByZXR1cm4gMDsKPiAg
ICAgICAgIH0KPgo+ICBvdXQ6Cj4gQEAgLTE4NDgsMTQgKzE4MzgsMjggQEAgc3RhdGljIGludCBt
aWdyYXRlX3BhZ2VzX2JhdGNoKHN0cnVjdCBsaXN0X2hlYWQgKmZyb20sCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsKPiAgICAgICAgICAgICAgICAgICAgICAgICB9
Cj4KPiArICAgICAgICAgICAgICAgICAgICAgICAvKgo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAqIElmIHdlIGFyZSBob2xkaW5nIHRoZSBsYXN0IGZvbGlvIHJlZmVyZW5jZSwgdGhlIGZvbGlv
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICogd2FzIGZyZWVkIGZyb20gdW5kZXIgdXMsIHNv
IGp1c3QgZHJvcCBvdXIgcmVmZXJlbmNlLgo+ICsgICAgICAgICAgICAgICAgICAgICAgICAqLwo+
ICsgICAgICAgICAgICAgICAgICAgICAgIGlmIChsaWtlbHkoIXBhZ2VfaGFzX21vdmFibGVfb3Bz
KCZmb2xpby0+cGFnZSkpICYmCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIGZvbGlvX3Jl
Zl9jb3VudChmb2xpbykgPT0gMSkgewo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Zm9saW9fY2xlYXJfYWN0aXZlKGZvbGlvKTsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGZvbGlvX2NsZWFyX3VuZXZpY3RhYmxlKGZvbGlvKTsKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGxpc3RfZGVsKCZmb2xpby0+bHJ1KTsKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIG1pZ3JhdGVfZm9saW9fZG9uZShmb2xpbywgcmVhc29uKTsKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXRzLT5ucl9zdWNjZWVkZWQgKz0gbnJfcGFnZXM7
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdGF0cy0+bnJfdGhwX3N1Y2NlZWRl
ZCArPSBpc190aHA7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsK
PiArICAgICAgICAgICAgICAgICAgICAgICB9Cj4gKwoKSXQgc2VlbXMgdGhlIHJlYXNvbiBwYXJh
bWV0ZXIgaXMgbm8gbG9uZ2VyIHVzZWQgd2l0aGluIG1pZ3JhdGVfZm9saW9fdW5tYXAoKQphZnRl
ciB0aGlzIHBhdGNoLgoKUGVyaGFwcyBpdCBjb3VsZCBiZSByZW1vdmVkIGZyb20gdGhlIGZ1bmN0
aW9uJ3Mgc2lnbmF0dXJlIDspCgo+ICAgICAgICAgICAgICAgICAgICAgICAgIHJjID0gbWlncmF0
ZV9mb2xpb191bm1hcChnZXRfbmV3X2ZvbGlvLCBwdXRfbmV3X2ZvbGlvLAo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwcml2YXRlLCBmb2xpbywgJmRzdCwgbW9kZSwg
cmVhc29uLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZXRfZm9s
aW9zKTsKCkFueXdheSwganVzdCBhIHNtYWxsIHRob3VnaHQuIEZlZWwgZnJlZSB0byBhZGQ6ClJl
dmlld2VkLWJ5OiBMYW5jZSBZYW5nIDxsYW5jZS55YW5nQGxpbnV4LmRldj4KClRoYW5rcywKTGFu
Y2UKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMt
ZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2Uu
bmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNj
dXNzaW9uCg==
