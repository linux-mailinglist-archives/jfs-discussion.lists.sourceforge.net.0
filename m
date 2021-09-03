Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5580140077E
	for <lists+jfs-discussion@lfdr.de>; Fri,  3 Sep 2021 23:37:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mMGsJ-00086Q-GZ; Fri, 03 Sep 2021 21:37:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>)
 id 1mMGsH-000868-N8; Fri, 03 Sep 2021 21:37:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+6xqJC6gt8A48ew/awwwozt8E/k6gHAvzo9yeEa7rZ4=; b=CIXtx4xCGLYt+owISW4e4u5cRz
 5sgKpzEPh8MotQBKPnrneZ+96Lo/eWzyLQT4Bw6mixYtdL1ZNs9ZRYm/42/FRxsP399gGCyfiPN5/
 d7fePKxKUECxzzAy0LWQscZhCKqlv3/DkOO9R1rSqfNK28EDuYpn48BqkD8Xf5t2w3Nk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+6xqJC6gt8A48ew/awwwozt8E/k6gHAvzo9yeEa7rZ4=; b=mdBk99nm7KEH34QWQVDkbL4ajh
 gDnywTXOsZkEDQ+ARELzxAKTVozzbiB0aWcfM1EKR8p5lcySQgKqwEKxjl1u9TLCuJTypNqj0dH3X
 A2npkBodNeG3Cmcw1bvUFl3mpcv0Fy1jnfjrvnQ44kGLokgkeMnt+cUBuH/zTu8zNh9Y=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mMGsG-00DbJR-Rg; Fri, 03 Sep 2021 21:37:25 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 567F160F21;
 Fri,  3 Sep 2021 21:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630705025;
 bh=ysWHeMqbDEvsn5l8zRqxKz3HmCgf/gvL2ecLQgzUgGI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aSiHeZKjhDq+ztl6o0f8wJxJmLw4zLul3iGSDB0Jqs0IMlXRUHoxhXWYzjIO0MzPC
 1Hj//2eBpuNjxzEzmLcG+hxJy2hDEPNA2RO3akE+OcW7sL+9CcI14cpqflptRh/04n
 GToXqM4S5SSc8/iwtbhsTk8rCGcVV2gDHv+jtOOlKiLU6C7dCK7qV5MsON8njssnSU
 iu8dYTz8MbyrD+zryeE9eP5/TKU9JMIJc2y2wIXJ31zSquZW0laOYBVIgrPBo1R7m9
 /OkMY4URXIIQWKvX8k//xjd3ldXNcS4KXMJuUHemCKv8+xZWXUx5hZMNvUeZSD6NER
 34BYeYwAEYt+A==
Received: by pali.im (Postfix)
 id 39FF877C; Fri,  3 Sep 2021 23:37:03 +0200 (CEST)
Date: Fri, 3 Sep 2021 23:37:03 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Kari Argillander <kari.argillander@gmail.com>
Message-ID: <20210903213703.s5y5iobmdrlmzfek@pali>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210903212616.xbi5tz5ier5xcpas@kari-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210903212616.xbi5tz5ier5xcpas@kari-VirtualBox>
User-Agent: NeoMutt/20180716
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Saturday 04 September 2021 00:26:16 Kari Argillander wrote:
    > On Sun, Aug 08, 2021 at 06:24:33PM +0200, Pali Rohár wrote: > > Module
    nls_utf8 is broken in several ways. It does not support (full) [...] 
 
 Content analysis details:   (-5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mMGsG-00DbJR-Rg
Subject: Re: [Jfs-discussion] [RFC PATCH 00/20] fs: Remove usage of broken
 nls_utf8 and drop it
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
Cc: linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Luis de Bethencourt <luisbg@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Anton Altaparmakov <anton@tuxera.com>,
 Christoph Hellwig <hch@infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@ucw.cz>,
 linux-fsdevel@vger.kernel.org, "Theodore Y . Ts'o" <tytso@mit.edu>,
 Andrew Morton <akpm@linux-foundation.org>,
 Marek =?utf-8?B?QmVow7pu?= <marek.behun@nic.cz>,
 Salah Triki <salah.triki@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gU2F0dXJkYXkgMDQgU2VwdGVtYmVyIDIwMjEgMDA6MjY6MTYgS2FyaSBBcmdpbGxhbmRlciB3
cm90ZToKPiBPbiBTdW4sIEF1ZyAwOCwgMjAyMSBhdCAwNjoyNDozM1BNICswMjAwLCBQYWxpIFJv
aMOhciB3cm90ZToKPiA+IE1vZHVsZSBubHNfdXRmOCBpcyBicm9rZW4gaW4gc2V2ZXJhbCB3YXlz
LiBJdCBkb2VzIG5vdCBzdXBwb3J0IChmdWxsKQo+ID4gVVRGLTgsIGRlc3BpdGUgaXRzIG5hbWUu
IEl0IGNhbm5vdCBoYW5kbGUgNC1ieXRlIFVURi04IHNlcXVlbmNlcyBhbmQKPiA+IHRvbG93ZXIv
dG91cHBlciB0YWJsZSBpcyBub3QgaW1wbGVtZW50ZWQgYXQgYWxsLiBXaGljaCBtZWFucyB0aGF0
IGl0IGlzCj4gPiBub3Qgc3VpdGFibGUgZm9yIHVzYWdlIGluIGNhc2UtaW5zZW5zaXRpdmUgZmls
ZXN5c3RlbXMgb3IgVVRGLTE2Cj4gPiBmaWxlc3lzdGVtcyAoYmVjYXVzZSBvZiBlLmcuIG1pc3Np
bmcgVVRGLTE2IHN1cnJvZ2F0ZSBwYWlycyBwcm9jZXNzaW5nKS4KPiA+IAo+ID4gVGhpcyBpcyBS
RkMgcGF0Y2ggc2VyaWVzIHdoaWNoIHVuaWZ5IGFuZCBmaXggaW9jaGFyc2V0PXV0ZjggbW91bnQK
PiA+IG9wdGlvbiBpbiBhbGwgZnMgZHJpdmVycyBhbmQgY29udmVydHMgYWxsIHJlbWFpbmluZyBm
cyBkcml2ZXJzIHRvIHVzZQo+ID4gdXRmOHNfdG9fdXRmMTZzKCksIHV0ZjE2c190b191dGY4cygp
LCB1dGY4X3RvX3V0ZjMyKCksIHV0ZjMyX3RvX3V0ZjgKPiA+IGZ1bmN0aW9ucyBmb3IgaW1wbGVt
ZW50aW5nIFVURi04IHN1cHBvcnQgaW5zdGVhZCBvZiBubHNfdXRmOC4KPiA+IAo+ID4gU28gYXQg
dGhlIGVuZCBpdCBhbGxvd3MgdG8gY29tcGxldGVseSBkcm9wIHRoaXMgYnJva2VuIG5sc191dGY4
IG1vZHVsZS4KPiAKPiBOb3cgdGhhdCBldmVyeSBmaWxlc3lzdGVtIHdpbGwgc3VwcG9ydCBubHM9
TlVMTC4gSXMgaXQgcG9zc2libGUgdG8ganVzdAo+IGRyb3AgZGVmYXVsdF90YWJsZSBjb21wbGV0
bHk/IFRoZW4gZGVmYXVsdCBoYXMgdG8gYmUgdXRmOCwgYnV0IGlzIGl0IGEKPiBwcm9ibGVtPwoK
Q3VycmVudGx5IChkZWZhdWx0KSBmYWxsYmFjayBubHMgdGFibGUgaXMgaXNvODg1OS0xLiBJIHdh
cyBwbGFubmluZyB0bwptZXJnZSBmYWxsYmFjayBubHMgdGFibGUgYW5kIGV4dGVybmFsIGlzbzg4
NTktMSB0YWJsZSBpbnRvIG9uZSwgdG8KZGVjcmVhc2UgY29kZSBkdXBsaWNhdGlvbi4KClRoZXJl
IGlzIGFsc28gY29uZmlnIG9wdGlvbiBmb3IgZGVmYXVsdCB0YWJsZS4gSSBkbyBub3QgdGhpbmsg
aXQgaXMgYQpnb29kIGlkZWEgdG8gZHJvcCBjb25maWcgb3B0aW9uIGZvciBkZWZhdWx0IHRhYmxl
IGFzIG1vcmUgcGVvcGxlIGFyZQp1c2luZyBzb21lIGlzbzg4NTktWCBhcyBkZWZhdWx0IGVuY29k
aW5nLgoKPiBUaGVuIEkgd2FzIGFsc28gdGhpbmtpbmcgdGhhdCBldmVyeSBubHMgImNvZGVwYWdl
IG1vZHVsZSIgY2FuIGhhdmUgaW4KPiBLY29uZmlnCj4gCXNlbGVjdCBIQVZFX05MUwo+IAo+IEhB
VkVfTkxTIHdpbGwgdGVsbCBpZiB3ZSBjYW4gZ2V0IGFueXRoaW5nIG90aGVyIHRoYW4gbmxzPU5V
TEwuIFRoaXMgd2F5Cj4gZnMgY2FuIGRyb3Agc29tZSBmdW5jdGlvbnMgaWYgdGhleSB3YW50ZWQg
dG8uICBJdCB3b3VsZCBiZSBuaWNlIHRvIGFsc28KPiBtYWtlIG5scyBtb2R1bGUgYXMgc21hbGwg
YXMgcG9zc2libGUgYmVjYXVzZSBhbHNvIGFjcGksIHBjaSBhbmQgdXNiCj4gc2VsZWN0cyBpdC4g
QWxzbyBtYW55IG90aGVyIGRyaXZlciBzZWVtcyB0byBkZXBlbmQgb24gaXQgYW5kIHRoZXkgZG8g
bm90Cj4gZXZlbiBzZWVtIHRvIHNlbGVjdCBpdC4gQWxsIG90aGVyIHRoYW4gZmlsZXN5c3RlbXMg
c2VlbXMgdG8ganVzdCBuZWVkCj4gdXRmIGNvbnZlcnNpb25zLiBBdCBsZWFzdCBmb3IgcXVpY2sg
ZXllLiAgT3RoZXIgb3B0aW9uIGlzIHRvIHNlcGVyYXRlCj4gbmxzIGFuZCB1dGYsIGJ1dCBJJ20g
bm90IGZhbiB0aGlzIGlkZWEganVzdCB5ZXQgYXQgbGVhc3QuCgpubHMgdGFibGVzIGNhbiBiZSBh
bHJlYWR5IGNvbXBpbGVkIGFzIG1vZHVsZXMuIFRoZXJlIGFyZSBhbHNvCmluZWZmaWNpZW50IGlt
cGxlbWVudGF0aW9ucyBvZiBzb21lIG5scyB0YWJsZXMgKGUuZy4gYXNjaWkgb3IKaXNvODg1OS0x
KS4gU28gdGhlcmUgYXJlIGFscmVhZHkgcGxhY2VzIGZvciBkZWNyZWFzaW5nIHNpemUgb2Ygbmxz
CmNvZGUgd2l0aG91dCBsb29zaW5nIGFueSBmdW5jdGlvbmFsaXR5LgoKPiBXaG9sZSBwb2ludCBp
cyB0byBoZWxwIGxpdHRsZSBiaXQgc21hbGwgTGludXggYW5kIGVtYmVkZGVkIGRldmljZXMuIEkn
bQo+IGhhcHB5IHRvIGRvIHRoaXMsIGJ1dCBhbGwgcmVhbGx5IGRlcGVucyBvbiBpZiB1dGY4IGNh
biBiZSBkZWZhdWx0IGFuZAo+IHRoYXQgd2Ugc3VyZSBjYW4gdGhpbmsgYmVmb3JlIGhhbmQuIAoK
SSBhZ3JlZSB0aGF0IG9uIG1vZGVybiBlbWJlZGRlZCBzeXN0ZW1zIHRoZXJlIGlzIG5vIHJlYXNv
biB0byB1c2UKbm9uLXV0ZjggZW5jb2RpbmcgaWYgeW91IGFyZSBub3QgdGFyZ2V0aW5nIHNvbWUg
bGVnYWN5IHVzZXJzcGFjZS4KClNvIGFsbG93aW5nIHRvIGNvbXBpbGUgZmlsZXN5c3RlbXMgYWxz
byB3aXRob3V0IG5scyBjb2RlIChpbiB3aGljaCBjYXNlCnRoZXkgd291bGQgdXNlIG9ubHkgdXRm
LTgpIG1ha2VzIHNlbnNlLgoKPiAgIEFyZ2lsbGFuZGVyCj4gCj4gPiBGb3IgbW9yZSBkZXRhaWxz
IGxvb2sgYXQgZW1haWwgdGhyZWFkIHdoZXJlIHdhcyBkaXNjdXNzZWQgZnMgdW5pZmljYXRpb246
Cj4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1mc2RldmVsLzIwMjAwMTAyMjExODU1
LmdnNjJyN2pzaHA3NDJkNmlAcGFsaS90LyN1Cj4gPiAKPiA+IFRoaXMgcGF0Y2ggc2VyaWVzIGlz
IG1vc3RseSB1bnRlc3RlZCBhbmQgcHJlc2VudGVkIGFzIFJGQy4gUGxlYXNlIGxldCBtZQo+ID4g
a25vdyB3aGF0IGRvIHlvdSB0aGluayBhYm91dCBpdCBhbmQgaWYgaXMgdGhlIGNvcnJlY3Qgd2F5
IGhvdyB0byBmaXgKPiA+IGJyb2tlbiBVVEYtOCBzdXBwb3J0IGluIGZzIGRyaXZlcnMuIEFzIGV4
cGxhaW5lZCBpbiBhYm92ZSBlbWFpbCB0aHJlYWQgSQo+ID4gdGhpbmsgaXQgZG9lcyBub3QgbWFr
ZSBzZW5zZSB0byB0cnkgZml4aW5nIHdob2xlIE5MUyBmcmFtZXdvcmsgYW5kIGl0IGlzCj4gPiBl
YXNpZXIgdG8ganVzdCBkcm9wIHRoaXMgbmxzX3V0ZjggbW9kdWxlLgo+ID4gCj4gPiBOb3RlOiB0
aGlzIHBhdGNoIHNlcmllcyBkb2VzIG5vdCBhZGRyZXNzIFVURi04IGZhdCBjYXNlLXNlbnNpdGl2
aXR5IGlzc3VlOgo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtZnNkZXZlbC8yMDIw
MDExOTIyMTQ1NS5iYWM3ZGM1NWc1NnEybDRyQHBhbGkvCj4gPiAKPiA+IFBhbGkgUm9ow6FyICgy
MCk6Cj4gPiAgIGZhdDogRml4IGlvY2hhcnNldD11dGY4IG1vdW50IG9wdGlvbgo+ID4gICBoZnNw
bHVzOiBBZGQgaW9jaGFyc2V0PSBtb3VudCBvcHRpb24gYXMgYWxpYXMgZm9yIG5scz0KPiA+ICAg
dWRmOiBGaXggaW9jaGFyc2V0PXV0ZjggbW91bnQgb3B0aW9uCj4gPiAgIGlzb2ZzOiBqb2xpZXQ6
IEZpeCBpb2NoYXJzZXQ9dXRmOCBtb3VudCBvcHRpb24KPiA+ICAgbnRmczogVW5kZXByZWNhdGUg
aW9jaGFyc2V0PSBtb3VudCBvcHRpb24KPiA+ICAgbnRmczogRml4IGVycm9yIHByb2Nlc3Npbmcg
d2hlbiBsb2FkX25scygpIGZhaWxzCj4gPiAgIGJlZnM6IEZpeCBwcmludGluZyBpb2NoYXJzZXQ9
IG1vdW50IG9wdGlvbgo+ID4gICBiZWZzOiBSZW5hbWUgZW51bSB2YWx1ZSBPcHRfY2hhcnNldCB0
byBPcHRfaW9jaGFyc2V0IHRvIG1hdGNoIG1vdW50Cj4gPiAgICAgb3B0aW9uCj4gPiAgIGJlZnM6
IEZpeCBlcnJvciBwcm9jZXNzaW5nIHdoZW4gbG9hZF9ubHMoKSBmYWlscwo+ID4gICBiZWZzOiBB
bGxvdyB0byB1c2UgbmF0aXZlIFVURi04IG1vZGUKPiA+ICAgaGZzOiBFeHBsaWNpdGx5IHNldCBo
c2ItPm5sc19kaXNrIHdoZW4gaHNiLT5ubHNfaW8gaXMgc2V0Cj4gPiAgIGhmczogRG8gbm90IHVz
ZSBicm9rZW4gdXRmOCBOTFMgdGFibGUgZm9yIGlvY2hhcnNldD11dGY4IG1vdW50IG9wdGlvbgo+
ID4gICBoZnNwbHVzOiBEbyBub3QgdXNlIGJyb2tlbiB1dGY4IE5MUyB0YWJsZSBmb3IgaW9jaGFy
c2V0PXV0ZjggbW91bnQKPiA+ICAgICBvcHRpb24KPiA+ICAgamZzOiBSZW1vdmUgY3VzdG9tIGlz
bzg4NTktMSBpbXBsZW1lbnRhdGlvbgo+ID4gICBqZnM6IEZpeCBidWZmZXIgb3ZlcmZsb3cgaW4g
amZzX3N0cmZyb21VQ1NfbGUoKSBmdW5jdGlvbgo+ID4gICBqZnM6IERvIG5vdCB1c2UgYnJva2Vu
IHV0ZjggTkxTIHRhYmxlIGZvciBpb2NoYXJzZXQ9dXRmOCBtb3VudCBvcHRpb24KPiA+ICAgbnRm
czogRG8gbm90IHVzZSBicm9rZW4gdXRmOCBOTFMgdGFibGUgZm9yIGlvY2hhcnNldD11dGY4IG1v
dW50IG9wdGlvbgo+ID4gICBjaWZzOiBEbyBub3QgdXNlIGJyb2tlbiB1dGY4IE5MUyB0YWJsZSBm
b3IgaW9jaGFyc2V0PXV0ZjggbW91bnQgb3B0aW9uCj4gPiAgIGNpZnM6IFJlbW92ZSB1c2FnZSBv
ZiBsb2FkX25sc19kZWZhdWx0KCkgY2FsbHMKPiA+ICAgbmxzOiBEcm9wIGJyb2tlbiBubHNfdXRm
OCBtb2R1bGUKPiA+IAo+ID4gIGZzL2JlZnMvbGludXh2ZnMuYyAgICAgICAgICB8ICAyMiArKysr
LS0tCj4gPiAgZnMvY2lmcy9jaWZzX3VuaWNvZGUuYyAgICAgIHwgMTI4ICsrKysrKysrKysrKysr
KysrKysrKysrLS0tLS0tLS0tLS0tLQo+ID4gIGZzL2NpZnMvY2lmc191bmljb2RlLmggICAgICB8
ICAgMiArLQo+ID4gIGZzL2NpZnMvY2lmc2ZzLmMgICAgICAgICAgICB8ICAgMiArCj4gPiAgZnMv
Y2lmcy9jaWZzc21iLmMgICAgICAgICAgIHwgICA4ICstLQo+ID4gIGZzL2NpZnMvY29ubmVjdC5j
ICAgICAgICAgICB8ICAgOCArKy0KPiA+ICBmcy9jaWZzL2Rmc19jYWNoZS5jICAgICAgICAgfCAg
MjQgKysrLS0tLQo+ID4gIGZzL2NpZnMvZGlyLmMgICAgICAgICAgICAgICB8ICAyOCArKysrKyst
LQo+ID4gIGZzL2NpZnMvc21iMnBkdS5jICAgICAgICAgICB8ICAxNyArKy0tLQo+ID4gIGZzL2Np
ZnMvd2ludWNhc2UuYyAgICAgICAgICB8ICAxNCArKy0tCj4gPiAgZnMvZmF0L0tjb25maWcgICAg
ICAgICAgICAgIHwgIDE1IC0tLS0tCj4gPiAgZnMvZmF0L2Rpci5jICAgICAgICAgICAgICAgIHwg
IDE3ICsrLS0tCj4gPiAgZnMvZmF0L2ZhdC5oICAgICAgICAgICAgICAgIHwgIDIyICsrKysrKysK
PiA+ICBmcy9mYXQvaW5vZGUuYyAgICAgICAgICAgICAgfCAgMjggKysrKy0tLS0KPiA+ICBmcy9m
YXQvbmFtZWlfdmZhdC5jICAgICAgICAgfCAgMjYgKysrKysrLS0KPiA+ICBmcy9oZnMvc3VwZXIu
YyAgICAgICAgICAgICAgfCAgNjIgKysrKysrKysrKysrKystLS0KPiA+ICBmcy9oZnMvdHJhbnMu
YyAgICAgICAgICAgICAgfCAgNjIgKysrKysrKysrLS0tLS0tLS0KPiA+ICBmcy9oZnNwbHVzL2Rp
ci5jICAgICAgICAgICAgfCAgIDYgKy0KPiA+ICBmcy9oZnNwbHVzL29wdGlvbnMuYyAgICAgICAg
fCAgMzkgKysrKysrLS0tLS0KPiA+ICBmcy9oZnNwbHVzL3N1cGVyLmMgICAgICAgICAgfCAgIDcg
Ky0KPiA+ICBmcy9oZnNwbHVzL3VuaWNvZGUuYyAgICAgICAgfCAgMzEgKysrKysrKystCj4gPiAg
ZnMvaGZzcGx1cy94YXR0ci5jICAgICAgICAgIHwgIDE0ICsrLS0KPiA+ICBmcy9oZnNwbHVzL3hh
dHRyX3NlY3VyaXR5LmMgfCAgIDMgKy0KPiA+ICBmcy9pc29mcy9pbm9kZS5jICAgICAgICAgICAg
fCAgMjcgKysrKy0tLS0KPiA+ICBmcy9pc29mcy9pc29mcy5oICAgICAgICAgICAgfCAgIDEgLQo+
ID4gIGZzL2lzb2ZzL2pvbGlldC5jICAgICAgICAgICB8ICAgNCArLQo+ID4gIGZzL2pmcy9qZnNf
ZHRyZWUuYyAgICAgICAgICB8ICAxMyArKystCj4gPiAgZnMvamZzL2pmc191bmljb2RlLmMgICAg
ICAgIHwgIDM1ICsrKysrLS0tLS0KPiA+ICBmcy9qZnMvamZzX3VuaWNvZGUuaCAgICAgICAgfCAg
IDIgKy0KPiA+ICBmcy9qZnMvc3VwZXIuYyAgICAgICAgICAgICAgfCAgMjkgKysrKysrLS0KPiA+
ICBmcy9ubHMvS2NvbmZpZyAgICAgICAgICAgICAgfCAgIDkgLS0tCj4gPiAgZnMvbmxzL01ha2Vm
aWxlICAgICAgICAgICAgIHwgICAxIC0KPiA+ICBmcy9ubHMvbmxzX3V0ZjguYyAgICAgICAgICAg
fCAgNjcgLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gIGZzL250ZnMvZGlyLmMgICAgICAgICAgICAg
ICB8ICAgNiArLQo+ID4gIGZzL250ZnMvaW5vZGUuYyAgICAgICAgICAgICB8ICAgNSArLQo+ID4g
IGZzL250ZnMvc3VwZXIuYyAgICAgICAgICAgICB8ICA2MCArKysrKysrKy0tLS0tLS0tLQo+ID4g
IGZzL250ZnMvdW5pc3RyLmMgICAgICAgICAgICB8ICAyOCArKysrKysrLQo+ID4gIGZzL3VkZi9z
dXBlci5jICAgICAgICAgICAgICB8ICA1MCArKysrKystLS0tLS0tLQo+ID4gIGZzL3VkZi91ZGZf
c2IuaCAgICAgICAgICAgICB8ICAgMiAtCj4gPiAgZnMvdWRmL3VuaWNvZGUuYyAgICAgICAgICAg
IHwgICA0ICstCj4gPiAgNDAgZmlsZXMgY2hhbmdlZCwgNTEwIGluc2VydGlvbnMoKyksIDQxOCBk
ZWxldGlvbnMoLSkKPiA+ICBkZWxldGUgbW9kZSAxMDA2NDQgZnMvbmxzL25sc191dGY4LmMKPiA+
IAo+ID4gLS0gCj4gPiAyLjIwLjEKPiA+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vz
c2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQv
bGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
