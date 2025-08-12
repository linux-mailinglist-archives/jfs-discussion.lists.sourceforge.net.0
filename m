Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DA7B230BA
	for <lists+jfs-discussion@lfdr.de>; Tue, 12 Aug 2025 19:55:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:References:
	In-Reply-To:To:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9ZIobRYXTsDOqPkWYpG1ktK1FTppZ/IFcMdE30VFHv0=; b=VXsgF8FWClJb2ykzxKDBQ4OAsE
	EV29VKXomndM9CKQuL4b9zPqMYKEgRcSDWpz/Cbeldib0ac9VRru5kygZgsLkaUk1c4Y//fqJh7qF
	t54PS2zt0CZThKxwykrm/itS9XbYTWIP0bsob5EwaWVsOYMtfCyjNJpxqOmllC9TTllg=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ultDZ-00040Y-JE;
	Tue, 12 Aug 2025 17:55:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ying.huang@linux.alibaba.com>) id 1uldqE-0002Ra-0g
 for jfs-discussion@lists.sourceforge.net;
 Tue, 12 Aug 2025 01:30:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=djZxdkbYS5ABjJh5vZ+OSyzqxKEA12clHOn12k1eFBw=; b=RJgXVehHnlADV4F7I/w9cdX2Gt
 O+/EaxhDHL77Q90zC8BHH/ojGFVYJNuR1/wuSaSM+mX6WhikXXxG0vXDRPM7VAATwXCmYGdeDVb8/
 vHjC+UkLD2EOkeEQDCOT4arFDw8kjC8mTVcP6bn8UTQAH67UHsKoh8nVeRE4GniuoxNA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=djZxdkbYS5ABjJh5vZ+OSyzqxKEA12clHOn12k1eFBw=; b=HuVbDH9WGTnR2edAw4d0zY+lH3
 z4fJ1dQ9U22hupq4+tLWYkFQjlSvY6jiudaa9PXvepRktLjGzkvxnm/xiayoXSJGXBhs4iKQcxBxg
 jukCttzouz5CwsMpxXDnTzlWlzyq52FZ5KACg05q5BOViOMvSvCPEwiK0OrNc7KrNQbA=;
Received: from out30-132.freemail.mail.aliyun.com ([115.124.30.132])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uldqD-0004WD-8K for jfs-discussion@lists.sourceforge.net;
 Tue, 12 Aug 2025 01:30:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.alibaba.com; s=default;
 t=1754962210; h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 bh=djZxdkbYS5ABjJh5vZ+OSyzqxKEA12clHOn12k1eFBw=;
 b=JMbfwpsRNCi9vQ8K0CdPK0zFsmtjl1OT5ze7/nvcC9uy1+BBNgnJzrXzYo/jsMsVasDPYYjhUbEL4r0yaX89uL9z80p/b5ORZUZIyBKo2n7zC/7pwar7Es6i3EZ6u8anU7cbm5tcI49YJa+A9LIyWz09nPLOifv3+UzTQQDKM9s=
Received: from DESKTOP-5N7EMDA(mailfrom:ying.huang@linux.alibaba.com
 fp:SMTPD_---0WlYvemQ_1754962181 cluster:ay36) by smtp.aliyun-inc.com;
 Tue, 12 Aug 2025 09:30:08 +0800
To: David Hildenbrand <david@redhat.com>
In-Reply-To: <20250811143949.1117439-1-david@redhat.com> (David Hildenbrand's
 message of "Mon, 11 Aug 2025 16:39:46 +0200")
References: <20250811143949.1117439-1-david@redhat.com>
Date: Tue, 12 Aug 2025 09:29:40 +0800
Message-ID: <87bjolgwe3.fsf@DESKTOP-5N7EMDA>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Spam-Score: -7.7 (-------)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, David, David Hildenbrand <david@redhat.com> writes: >
 This is against mm/mm-new. > > This series gets rid of MIGRATEPAGE_UNMAP,
 to then convert the remaining > MIGRATEPAGE_SUCCESS usage to simply use 0
 instead. > > Not sure if it makes sense to split t [...] 
 Content analysis details:   (-7.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM welcome-list
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1uldqD-0004WD-8K
X-Mailman-Approved-At: Tue, 12 Aug 2025 17:55:24 +0000
Subject: Re: [Jfs-discussion] [PATCH v1 0/2] mm: remove MIGRATEPAGE_*
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
From: "Huang, Ying via Jfs-discussion" <jfs-discussion@lists.sourceforge.net>
Reply-To: "Huang, Ying" <ying.huang@linux.alibaba.com>
Cc: linux-aio@kvack.org, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, "Michael S. Tsirkin" <mst@redhat.com>,
 Jason Wang <jasowang@redhat.com>, linux-mm@kvack.org,
 Matthew Brost <matthew.brost@intel.com>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 Madhavan Srinivasan <maddy@linux.ibm.com>, Rakie Kim <rakie.kim@sk.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Alistair Popple <apopple@nvidia.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Eugenio =?utf-8?Q?P=C3=A9rez?= <eperezma@redhat.com>, Zi Yan <ziy@nvidia.com>,
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

SGksIERhdmlkLAoKRGF2aWQgSGlsZGVuYnJhbmQgPGRhdmlkQHJlZGhhdC5jb20+IHdyaXRlczoK
Cj4gVGhpcyBpcyBhZ2FpbnN0IG1tL21tLW5ldy4KPgo+IFRoaXMgc2VyaWVzIGdldHMgcmlkIG9m
IE1JR1JBVEVQQUdFX1VOTUFQLCB0byB0aGVuIGNvbnZlcnQgdGhlIHJlbWFpbmluZwo+IE1JR1JB
VEVQQUdFX1NVQ0NFU1MgdXNhZ2UgdG8gc2ltcGx5IHVzZSAwIGluc3RlYWQuCj4KPiBOb3Qgc3Vy
ZSBpZiBpdCBtYWtlcyBzZW5zZSB0byBzcGxpdCB0aGUgc2Vjb25kIHBhdGNoIHVwLCBhIHRyZWV3
aWRlCj4gY2xlYW51cCBmZWx0IG1vcmUgcmVhc29uYWJsZSBmb3IgdGhpcyBzaW1wbGUgY2hhbmdl
IGluIGFuIGFyZWEgd2hlcmUKPiBJIGRvbid0IGV4cGVjdCBhIGxvdCBvZiBjaHVybi4KPgo+IEJy
aWVmbHkgdGVzdGVkIHdpdGggdmlydGlvLW1lbSBpbiBhIFZNLCBtYWtpbmcgc3VyZSB0aGF0IGJh
c2ljCj4gcGFnZSBtaWdyYXRpb24ga2VlcHMgd29ya2luZy4KPgo+IENjOiBBbmRyZXcgTW9ydG9u
IDxha3BtQGxpbnV4LWZvdW5kYXRpb24ub3JnPgo+IENjOiBNYWRoYXZhbiBTcmluaXZhc2FuIDxt
YWRkeUBsaW51eC5pYm0uY29tPgo+IENjOiBNaWNoYWVsIEVsbGVybWFuIDxtcGVAZWxsZXJtYW4u
aWQuYXU+Cj4gQ2M6IE5pY2hvbGFzIFBpZ2dpbiA8bnBpZ2dpbkBnbWFpbC5jb20+Cj4gQ2M6IENo
cmlzdG9waGUgTGVyb3kgPGNocmlzdG9waGUubGVyb3lAY3Nncm91cC5ldT4KPiBDYzogSmVycmlu
IFNoYWppIEdlb3JnZSA8amVycmluLnNoYWppLWdlb3JnZUBicm9hZGNvbS5jb20+Cj4gQ2M6IEFy
bmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+Cj4gQ2M6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3Jl
Z2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+Cj4gQ2M6ICJNaWNoYWVsIFMuIFRzaXJraW4iIDxtc3RA
cmVkaGF0LmNvbT4KPiBDYzogSmFzb24gV2FuZyA8amFzb3dhbmdAcmVkaGF0LmNvbT4KPiBDYzog
WHVhbiBaaHVvIDx4dWFuemh1b0BsaW51eC5hbGliYWJhLmNvbT4KPiBDYzogIkV1Z2VuaW8gUMOp
cmV6IiA8ZXBlcmV6bWFAcmVkaGF0LmNvbT4KPiBDYzogQWxleGFuZGVyIFZpcm8gPHZpcm9AemVu
aXYubGludXgub3JnLnVrPgo+IENjOiBDaHJpc3RpYW4gQnJhdW5lciA8YnJhdW5lckBrZXJuZWwu
b3JnPgo+IENjOiBKYW4gS2FyYSA8amFja0BzdXNlLmN6Pgo+IENjOiBCZW5qYW1pbiBMYUhhaXNl
IDxiY3JsQGt2YWNrLm9yZz4KPiBDYzogQ2hyaXMgTWFzb24gPGNsbUBmYi5jb20+Cj4gQ2M6IEpv
c2VmIEJhY2lrIDxqb3NlZkB0b3hpY3BhbmRhLmNvbT4KPiBDYzogRGF2aWQgU3RlcmJhIDxkc3Rl
cmJhQHN1c2UuY29tPgo+IENjOiBNdWNodW4gU29uZyA8bXVjaHVuLnNvbmdAbGludXguZGV2Pgo+
IENjOiBPc2NhciBTYWx2YWRvciA8b3NhbHZhZG9yQHN1c2UuZGU+Cj4gQ2M6IERhdmUgS2xlaWth
bXAgPHNoYWdneUBrZXJuZWwub3JnPgo+IENjOiBaaSBZYW4gPHppeUBudmlkaWEuY29tPgo+IENj
OiBNYXR0aGV3IEJyb3N0IDxtYXR0aGV3LmJyb3N0QGludGVsLmNvbT4KPiBDYzogSm9zaHVhIEhh
aG4gPGpvc2h1YS5oYWhuanlAZ21haWwuY29tPgo+IENjOiBSYWtpZSBLaW0gPHJha2llLmtpbUBz
ay5jb20+Cj4gQ2M6IEJ5dW5nY2h1bCBQYXJrIDxieXVuZ2NodWxAc2suY29tPgo+IENjOiBHcmVn
b3J5IFByaWNlIDxnb3VycnlAZ291cnJ5Lm5ldD4KPiBDYzogWWluZyBIdWFuZyA8eWluZy5odWFu
Z0BsaW51eC5hbGliYWJhLmNvbT4KPiBDYzogQWxpc3RhaXIgUG9wcGxlIDxhcG9wcGxlQG52aWRp
YS5jb20+Cj4gQ2M6IE1pbmNoYW4gS2ltIDxtaW5jaGFuQGtlcm5lbC5vcmc+Cj4gQ2M6IFNlcmdl
eSBTZW5vemhhdHNreSA8c2Vub3poYXRza3lAY2hyb21pdW0ub3JnPgo+Cj4gRGF2aWQgSGlsZGVu
YnJhbmQgKDIpOgo+ICAgbW0vbWlncmF0ZTogcmVtb3ZlIE1JR1JBVEVQQUdFX1VOTUFQCj4gICB0
cmVld2lkZTogcmVtb3ZlIE1JR1JBVEVQQUdFX1NVQ0NFU1MKCkxHVE0uICBGZWVsIGZyZWUgdG8g
YWRkIG15CgpSZXZpZXdlZC1ieTogSHVhbmcgWWluZyA8eWluZy5odWFuZ0BsaW51eC5hbGliYWJh
LmNvbT4KCmZvciB0aGUgd2hvbGUgc2VyaWVzIGluIHRoZSBmdXR1cmUgdmVyc2lvbnMuCgo+ICBh
cmNoL3Bvd2VycGMvcGxhdGZvcm1zL3BzZXJpZXMvY21tLmMgfCAgMiArLQo+ICBkcml2ZXJzL21p
c2Mvdm13X2JhbGxvb24uYyAgICAgICAgICAgfCAgNCArLQo+ICBkcml2ZXJzL3ZpcnRpby92aXJ0
aW9fYmFsbG9vbi5jICAgICAgfCAgMiArLQo+ICBmcy9haW8uYyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgMiArLQo+ICBmcy9idHJmcy9pbm9kZS5jICAgICAgICAgICAgICAgICAgICAg
fCAgNCArLQo+ICBmcy9odWdldGxiZnMvaW5vZGUuYyAgICAgICAgICAgICAgICAgfCAgNCArLQo+
ICBmcy9qZnMvamZzX21ldGFwYWdlLmMgICAgICAgICAgICAgICAgfCAgOCArLS0KPiAgaW5jbHVk
ZS9saW51eC9taWdyYXRlLmggICAgICAgICAgICAgIHwgMTEgKy0tLQo+ICBtbS9taWdyYXRlLmMg
ICAgICAgICAgICAgICAgICAgICAgICAgfCA4MCArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0t
Cj4gIG1tL21pZ3JhdGVfZGV2aWNlLmMgICAgICAgICAgICAgICAgICB8ICAyICstCj4gIG1tL3pz
bWFsbG9jLmMgICAgICAgICAgICAgICAgICAgICAgICB8ICA0ICstCj4gIDExIGZpbGVzIGNoYW5n
ZWQsIDU2IGluc2VydGlvbnMoKyksIDY3IGRlbGV0aW9ucygtKQo+Cj4KPiBiYXNlLWNvbW1pdDog
NTNjNDQ4MDIzMTg1NzE3ZDBlZDU2YjU1NDZkYzJiZTQwNWRhOTJmZgoKLS0tCkJlc3QgUmVnYXJk
cywKSHVhbmcsIFlpbmcKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL2pmcy1kaXNjdXNzaW9uCg==
