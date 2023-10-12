Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5900B7C6967
	for <lists+jfs-discussion@lfdr.de>; Thu, 12 Oct 2023 11:23:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qqru5-0005l7-Ux;
	Thu, 12 Oct 2023 09:22:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1qqrtz-0005l0-BV
 for jfs-discussion@lists.sourceforge.net;
 Thu, 12 Oct 2023 09:22:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DFIwNS1wRZZs4N9XU6D4+uHSNBBg6ejyGYAiSpxUzQo=; b=AgxZPf9aLgGLPN0zizWb/jta7k
 cYbhafFcQjlEc/kGro/zvhjtC4YUchfG5riucbco6S3yvtVRtf4Nv7ubhHVIzG50e4mpuThqhrNkE
 QytgzXB+z6HLLzZhTolu0rvza3QXJPTh343qdh4piaLVhtPrWWi+IV86Pu2aTyRW0J7g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DFIwNS1wRZZs4N9XU6D4+uHSNBBg6ejyGYAiSpxUzQo=; b=YKeJ0ELaWXuwKkbG9r7MyAXeai
 6VR96ON2Bvd72SOZMrLANBIDInoBkFx/+BXXEbWOJPQck1V/IVt5XOvpw3WITAhQC9oVoAYHRqTXS
 6medyv3fHrM3eJdfcQidzBKnn+Qz/bbUeepI6eOnBtva5sCXlC0QqMgXX073vKSLMb5g=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qqrty-00CZi7-EK for jfs-discussion@lists.sourceforge.net;
 Thu, 12 Oct 2023 09:22:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id AB72FCE2769;
 Thu, 12 Oct 2023 09:22:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2E70C433C8;
 Thu, 12 Oct 2023 09:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1697102555;
 bh=AVoONaJXnEpXaoCQ4Sw9bA4Z6lJLX8sVavrkKsLMlV4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pKX/2tP058GU7x8IhDoq1zWDSz67wQdRrBFkfyFzw+5XOX+dtupVQknNEucodLxl7
 YjXMy9X5QcB3P/V6ZFSx+IRYE9lDE2LAHHCXCK67C0CscqwQbOXhn5p9P8MmUKrB5p
 tut9kV50Boh4XBpZbOyDkT0XjJxQTGGucdYTcdkojcB+GQ02ZO8dTFzdccV/pbvLj/
 Jsn8sFY7M/SRivqqGWWDhIwCH6pXbi+cDsmDmWnbvh3IhjnXS/+wDQfkTAdLbbg0cg
 mdfQhgwgKHjWlp/1B5/lB+EP9214EyC7D5zhYKaAlYfJBmDVbjXGJ6muJUABIgRT9Y
 xMcBUrZq81ejg==
Date: Thu, 12 Oct 2023 11:22:29 +0200
To: Jan Kara <jack@suse.cz>, Amir Goldstein <amir73il@gmail.com>
Message-ID: <20231012-klebt-wahljahr-a29e40a2ea2a@brauner>
References: <20231010131125.3uyfkqbcetfcqsve@quack3>
 <CAKPOu+-nC2bQTZYL0XTzJL6Tx4Pi1gLfNWCjU2Qz1f_5CbJc1w@mail.gmail.com>
 <20231011100541.sfn3prgtmp7hk2oj@quack3>
 <CAKPOu+_xdFALt9sgdd5w66Ab6KTqiy8+Z0Yd3Ss4+92jh8nCwg@mail.gmail.com>
 <20231011120655.ndb7bfasptjym3wl@quack3>
 <CAKPOu+-hLrrpZShHh0o6uc_KMW91suEd0_V_uzp5vMf4NM-8yw@mail.gmail.com>
 <CAKPOu+_0yjg=PrwAR8jKok8WskjdDEJOBtu3uKR_4Qtp8b7H1Q@mail.gmail.com>
 <20231011135922.4bij3ittlg4ujkd7@quack3>
 <20231011-braumeister-anrufen-62127dc64de0@brauner>
 <20231011162904.3dxkids7zzspcolp@quack3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231011162904.3dxkids7zzspcolp@quack3>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 11, 2023 at 06:29:04PM +0200, Jan Kara wrote:
 > On Wed 11-10-23 17:27:37, Christian Brauner wrote: > > On Wed, Oct 11, 2023
 at 03:59:22PM +0200, Jan Kara wrote: > > > On Wed 11-10-23 14:27 [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qqrty-00CZi7-EK
Subject: Re: [Jfs-discussion] [PATCH v2] fs/{posix_acl, ext2, jfs,
 ceph}: apply umask if ACL support is disabled
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
From: Christian Brauner via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Christian Brauner <brauner@kernel.org>
Cc: Dave Kleikamp <shaggy@kernel.org>,
 Max Kellermann <max.kellermann@ionos.com>, linux-ext4@vger.kernel.org,
 Yang Xu <xuyang2018.jy@fujitsu.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Ilya Dryomov <idryomov@gmail.com>,
 Xiubo Li <xiubli@redhat.com>, ceph-devel@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gV2VkLCBPY3QgMTEsIDIwMjMgYXQgMDY6Mjk6MDRQTSArMDIwMCwgSmFuIEthcmEgd3JvdGU6
Cj4gT24gV2VkIDExLTEwLTIzIDE3OjI3OjM3LCBDaHJpc3RpYW4gQnJhdW5lciB3cm90ZToKPiA+
IE9uIFdlZCwgT2N0IDExLCAyMDIzIGF0IDAzOjU5OjIyUE0gKzAyMDAsIEphbiBLYXJhIHdyb3Rl
Ogo+ID4gPiBPbiBXZWQgMTEtMTAtMjMgMTQ6Mjc6NDksIE1heCBLZWxsZXJtYW5uIHdyb3RlOgo+
ID4gPiA+IE9uIFdlZCwgT2N0IDExLCAyMDIzIGF0IDI6MTjigK9QTSBNYXggS2VsbGVybWFubiA8
bWF4LmtlbGxlcm1hbm5AaW9ub3MuY29tPiB3cm90ZToKPiA+ID4gPiA+IEJ1dCB3aXRob3V0IHRo
ZSBvdGhlciBmaWxlc3lzdGVtcy4gSSdsbCByZXNlbmQgaXQgd2l0aCBqdXN0IHRoZQo+ID4gPiA+
ID4gcG9zaXhfYWNsLmggaHVuay4KPiA+ID4gPiAKPiA+ID4gPiBUaGlua2luZyBhZ2FpbiwgSSBk
b24ndCB0aGluayB0aGlzIGlzIHRoZSBwcm9wZXIgc29sdXRpb24uIFRoaXMgbWF5Cj4gPiA+ID4g
c2VydmVyIGFzIGEgd29ya2Fyb3VuZCBzbyB0aG9zZSBicm9rZW4gZmlsZXN5c3RlbXMgZG9uJ3Qg
c3VmZmVyIGZyb20KPiA+ID4gPiB0aGlzIGJ1ZywgYnV0IGl0J3Mgbm90IHByb3Blci4KPiA+ID4g
PiAKPiA+ID4gPiBwb3NpeF9hY2xfY3JlYXRlKCkgaXMgb25seSBzdXBwb3NlZCB0byBhcHB5IHRo
ZSB1bWFzayBpZiB0aGUgaW5vZGUKPiA+ID4gPiBzdXBwb3J0cyBBQ0xzOyBpZiBub3QsIHRoZSBW
RlMgaXMgc3VwcG9zZWQgdG8gZG8gaXQuIEJ1dCBpZiB0aGUKPiA+ID4gPiBmaWxlc3lzdGVtIHBy
ZXRlbmRzIHRvIGhhdmUgQUNMIHN1cHBvcnQgYnV0IHRoZSBrZXJuZWwgZG9lcyBub3QsIGl0J3MK
PiA+ID4gPiByZWFsbHkgYSBmaWxlc3lzdGVtIGJ1Zy4gSGFja2luZyB0aGUgdW1hc2sgY29kZSBp
bnRvCj4gPiA+ID4gcG9zaXhfYWNsX2NyZWF0ZSgpIGZvciB0aGF0IGluY29uc2lzdGVudCBjYXNl
IGRvZXNuJ3Qgc291bmQgcmlnaHQuCj4gPiA+ID4gCj4gPiA+ID4gQSBiZXR0ZXIgd29ya2Fyb3Vu
ZCB3b3VsZCBiZSB0aGlzIHBhdGNoOgo+ID4gPiA+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5v
cmcvcHJvamVjdC9saW51eC1uZnMvcGF0Y2gvMTUxNjAzNzQ0NjYyLjI5MDM1LjQ5MTAxNjEyNjQx
MjQ4NzU2NTguc3RnaXRAcmFiYml0LmludGVybi5jbS1hZy8KPiA+ID4gPiBJIHN1Ym1pdHRlZCBp
dCBtb3JlIHRoYW4gNSB5ZWFycyBhZ28sIGl0IGdvdCBvbmUgcG9zaXRpdmUgcmV2aWV3LCBidXQK
PiA+ID4gPiB3YXMgbmV2ZXIgbWVyZ2VkLgo+ID4gPiA+IAo+ID4gPiA+IFRoaXMgcGF0Y2ggZW5h
YmxlcyB0aGUgVkZTJ3MgdW1hc2sgY29kZSBldmVuIGlmIHRoZSBmaWxlc3lzdGVtCj4gPiA+ID4g
cHJlcmVudHMgdG8gc3VwcG9ydCBBQ0xzLiBUaGlzIHN0aWxsIGRvZXNuJ3QgZml4IHRoZSBmaWxl
c3lzdGVtIGJ1ZywKPiA+ID4gPiBidXQgbWFrZXMgVkZTJ3MgYmVoYXZpb3IgY29uc2lzdGVudC4K
PiA+ID4gCj4gPiA+IE9LLCB0aGF0IHNvbHV0aW9uIHdvcmtzIGZvciBtZSBhcyB3ZWxsLiBJIGFn
cmVlIGl0IHNlZW1zIGEgdGFkIGJpdCBjbGVhbmVyLgo+ID4gPiBDaHJpc3RpYW4sIHdoaWNoIG9u
ZSB3b3VsZCB5b3UgcHJlZmVyPwo+ID4gCj4gPiBTbyBpdCBhbHdheXMgYnVnZ2VkIG1lIHRoYXQg
UE9TSVggQUNMcyBwdXNoIHVtYXNrIHN0cmlwcGluZyBkb3duIGludG8KPiA+IHRoZSBpbmRpdmlk
dWFsIGZpbGVzeXN0ZW1zIGJ1dCBpdCdzIGhhcmQgdG8gZ2V0IHJpZCBvZiB0aGlzLiBBbmQgd2UK
PiA+IHRyaWVkIHRvIGltcHJvdmUgdGhlIHNpdHVhdGlvbiBkdXJpbmcgdGhlIFBPU0lYIEFDTCBy
ZXdvcmsgYnkKPiA+IGludHJvZHVjaW5nIHZmc19wcmVwYXJlX3VtYXNrKCkuCj4gPiAKPiA+IEFz
aWRlIGZyb20gdGhhdCwgdGhlIHByb2JsZW0gaGFkIGJlZW4gdGhhdCBmaWxlc3lzdGVtcyBsaWtl
IG5mcyB2NAo+ID4gaW50ZW50aW9uYWxseSByYWlzZWQgU0JfUE9TSVhBQ0wgdG8gcHJldmVudCB1
bWFzayBzdHJpcHBpbmcgaW4gdGhlIFZGUy4KPiA+IElPVywgZm9yIHRoZW0gU0JfUE9TSVhBQ0wg
d2FzIGVxdWl2YWxlbnQgdG8gImRvbid0IGFwcGx5IGFueSB1bWFzayIuCj4gCj4gQWgsIHdoYXQg
YSBoYWNrLi4uCj4gCj4gPiBBbmQgYWZhaWN0IG5mcyB2NCBoYXMgaXQncyBvd24gdGhpbmcgZ29p
bmcgb24gaG93IGFuZCB3aGVyZSB1bWFza3MgYXJlCj4gPiBhcHBsaWVkLiBIb3dldmVyLCBzaW5j
ZSB3ZSBub3cgaGF2ZSB0aGUgZm9sbG93aW5nIGNvbW1pdCBpbiB2ZnMubWlzYzoKPiA+IAo+ID4g
Y29tbWl0IGY2MWI5YmIzZjgzODZhNWU1OWI0OWJmMTMxMGY1YjM0ZjQ3YmNlZjkKPiA+IEF1dGhv
cjogICAgIEplZmYgTGF5dG9uIDxqbGF5dG9uQGtlcm5lbC5vcmc+Cj4gPiBBdXRob3JEYXRlOiBN
b24gU2VwIDExIDIwOjI1OjUwIDIwMjMgLTA0MDAKPiA+IENvbW1pdDogICAgIENocmlzdGlhbiBC
cmF1bmVyIDxicmF1bmVyQGtlcm5lbC5vcmc+Cj4gPiBDb21taXREYXRlOiBUaHUgU2VwIDIxIDE1
OjM3OjQ3IDIwMjMgKzAyMDAKPiA+IAo+ID4gICAgIGZzOiBhZGQgYSBuZXcgU0JfSV9OT1VNQVNL
IGZsYWcKPiA+IAo+ID4gICAgIFNCX1BPU0lYQUNMIG11c3QgYmUgc2V0IHdoZW4gYSBmaWxlc3lz
dGVtIHN1cHBvcnRzIFBPU0lYIEFDTHMsIGJ1dCBORlN2NAo+ID4gICAgIGFsc28gc2V0cyB0aGlz
IGZsYWcgdG8gcHJldmVudCB0aGUgVkZTIGZyb20gYXBwbHlpbmcgdGhlIHVtYXNrIG9uCj4gPiAg
ICAgbmV3bHktY3JlYXRlZCBmaWxlcy4gTkZTdjQgZG9lc24ndCBzdXBwb3J0IFBPU0lYIEFDTHMg
aG93ZXZlciwgd2hpY2gKPiA+ICAgICBjYXVzZXMgY29uZnVzaW9uIHdoZW4gb3RoZXIgc3Vic3lz
dGVtcyB0cnkgdG8gdGVzdCBmb3IgdGhlbS4KPiA+IAo+ID4gICAgIEFkZCBhIG5ldyBTQl9JX05P
VU1BU0sgZmxhZyB0aGF0IGFsbG93cyBmaWxlc3lzdGVtcyB0byBvcHQtaW4gdG8gdW1hc2sKPiA+
ICAgICBzdHJpcHBpbmcgd2l0aG91dCBhZHZlcnRpc2luZyBzdXBwb3J0IGZvciBQT1NJWCBBQ0xz
LiBTZXQgdGhlIG5ldyBmbGFnCj4gPiAgICAgb24gTkZTdjQgaW5zdGVhZCBvZiBTQl9QT1NJWEFD
TC4KPiA+IAo+ID4gICAgIEFsc28sIG1vdmUgbW9kZV9zdHJpcF91bWFzayB0byBuYW1laS5oIGFu
ZCBjb252ZXJ0IGluaXRfbWtub2QgYW5kCj4gPiAgICAgaW5pdF9ta2RpciB0byB1c2UgaXQuCj4g
PiAKPiA+ICAgICBTaWduZWQtb2ZmLWJ5OiBKZWZmIExheXRvbiA8amxheXRvbkBrZXJuZWwub3Jn
Pgo+ID4gICAgIE1lc3NhZ2UtSWQ6IDwyMDIzMDkxMS1hY2wtZml4LXYzLTEtYjI1MzE1MzMzZjZj
QGtlcm5lbC5vcmc+Cj4gPiAgICAgU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEJyYXVuZXIgPGJy
YXVuZXJAa2VybmVsLm9yZz4KPiA+IAo+ID4gSSB0aGluayBpdCdzIHBvc3NpYmxlIHRvIHBpY2sg
dXAgdGhlIGZpcnN0IHBhdGNoIGxpbmtlZCBhYm92ZToKPiA+ICAgIAo+ID4gZml4IHVtYXNrIG9u
IE5GUyB3aXRoIENPTkZJR19GU19QT1NJWF9BQ0w9biBkb2Vzbid0IGxlYWQgdG8gYW55Cj4gPiAK
PiA+IGFuZCBzZWUgd2hldGhlciB3ZSBzZWUgYW55IHJlZ3Jlc3Npb25zIGZyb20gdGhpcy4KPiA+
IAo+ID4gVGhlIHNlY29uZCBwYXRjaCBJIGNhbid0IGVhc2lseSBqdWRnZSB0aGF0IHNob3VsZCBn
byB0aHJvdWdoIG5mcyBpZiBhdAo+ID4gYWxsLgo+ID4gCj4gPiBTbyBwcm9wb3NhbC9xdWVzdGlv
bjogc2hvdWxkIHdlIHRha2UgdGhlIGZpcnN0IHBhdGNoIGludG8gdmZzLm1pc2M/Cj4gCj4gU291
bmRzIGdvb2QgdG8gbWUuIEkgaGF2ZSBjaGVja2VkIHdoZXRoZXIgc29tZSBvdGhlciBmaWxlc3lz
dGVtIGRvZXMgbm90Cj4gdHJ5IHRvIHBsYXkgc2ltaWxhciBnYW1lcyBhcyBORlMgYW5kIGl0IGFw
cGVhcnMgbm90IGFsdGhvdWdoIG92ZXJsYXlmcyBkb2VzCj4gc2VlbSB0byBwbGF5IHNvbWUgZ2Ft
ZXMgd2l0aCB1bWFza3MuCgpJIHRoaW5rIHRoYXQgb3ZlcmxheWZzIHNldHMgU0JfUE9TSVhBQ0wg
dW5jb25kaXRpb25hbGx5IHRvIGVuc3VyZSB0aGF0CnRoZSB1cHBlciBmaWxlc3lzdGVtIGNhbiBk
ZWNpZGUgd2hlcmUgdGhlIHVtYXNrIG5lZWRzIHRvIGJlIHN0cmlwcGVkLiBJZgp0aGUgdXBwZXIg
ZmlsZXN5c3RlbSBkb2Vzbid0IGhhdmUgU0JfUE9TSVhBQ0wgdGhlbiB0aGUgdW1hc2sgd2lsbCBi
ZQpzdHJpcHBlZCBkaXJlY3RseSBpbiBlLmcuLCB2ZnNfY3JlYXRlKCksIGFuZCB2ZnNfdG1wZmls
ZSgpLiBJZiBpdCBkb2VzCnRoZW4gaXQgd2lsbCBiZSBkb25lIGluIHRoZSB1cHBlciBmaWxlc3lz
dGVtcy4KClNvIHdpdGggdGhlIHBhdGNoIEkgbGlua2VkIGFib3ZlIHRoYXQgd2UgaGF2ZSBpbiB2
ZnMubWlzYyB3ZSBzaG91bGQgYmUKYWJsZSB0byAgY2hhbmdlIG92ZXJsYXlmcyB0byBiZWhhdmUg
c2ltaWxhciB0byBORlM6CgpkaWZmIC0tZ2l0IGEvZnMvb3ZlcmxheWZzL3N1cGVyLmMgYi9mcy9v
dmVybGF5ZnMvc3VwZXIuYwppbmRleCA5ZjQzZjBkMzAzYWQuLjM2MTE4OWI2NzZiMCAxMDA2NDQK
LS0tIGEvZnMvb3ZlcmxheWZzL3N1cGVyLmMKKysrIGIvZnMvb3ZlcmxheWZzL3N1cGVyLmMKQEAg
LTE0ODksOCArMTQ4OSwxNiBAQCBpbnQgb3ZsX2ZpbGxfc3VwZXIoc3RydWN0IHN1cGVyX2Jsb2Nr
ICpzYiwgc3RydWN0IGZzX2NvbnRleHQgKmZjKQogICAgICAgIHNiLT5zX3hhdHRyID0gb2ZzLT5j
b25maWcudXNlcnhhdHRyID8gb3ZsX3VzZXJfeGF0dHJfaGFuZGxlcnMgOgogICAgICAgICAgICAg
ICAgb3ZsX3RydXN0ZWRfeGF0dHJfaGFuZGxlcnM7CiAgICAgICAgc2ItPnNfZnNfaW5mbyA9IG9m
czsKKyNpZmRlZiBDT05GSUdfRlNfUE9TSVhfQUNMCiAgICAgICAgc2ItPnNfZmxhZ3MgfD0gU0Jf
UE9TSVhBQ0w7CisjZW5kaWYKICAgICAgICBzYi0+c19pZmxhZ3MgfD0gU0JfSV9TS0lQX1NZTkMg
fCBTQl9JX0lNQV9VTlZFUklGSUFCTEVfU0lHTkFUVVJFOworICAgICAgIC8qCisgICAgICAgICog
RW5zdXJlIHRoYXQgdW1hc2sgaGFuZGxpbmcgaXMgZG9uZSBieSB0aGUgZmlsZXN5c3RlbXMgdXNl
ZAorICAgICAgICAqIGZvciB0aGUgdGhlIHVwcGVyIGxheWVyIGluc3RlYWQgb2Ygb3ZlcmxheWZz
IGFzIHRoYXQgd291bGQKKyAgICAgICAgKiBsZWFkIHRvIHVuZXhwZWN0ZWQgcmVzdWx0cy4KKyAg
ICAgICAgKi8KKyAgICAgICBzYi0+c19pZmxhZ3MgfD0gU0JfSV9OT1VNQVNLOwoKICAgICAgICBl
cnIgPSAtRU5PTUVNOwogICAgICAgIHJvb3RfZGVudHJ5ID0gb3ZsX2dldF9yb290KHNiLCBjdHgt
PnVwcGVyLmRlbnRyeSwgb2UpOwoKV2hpY2ggbWVhbnMgdGhhdCB1bWFzayBoYW5kbGluZyB3aWxs
IGJlIGRvbmUgYnkgdGhlIHVwcGVyIGZpbGVzeXN0ZW1zCmp1c3QgYXMgaXMgZG9uZSByaWdodCBu
b3cgYW5kIG92ZXJsYXlmcyBjYW4gc3RvcCBhZHZlcnRpc2luZyBTQl9QT1NJWEFDTApzdXBwb3J0
IG9uIGEga2VybmVsIHRoYXQgZG9lc24ndCBoYXZlIHN1cHBvcnQgZm9yIGl0IGNvbXBpbGVkIGlu
LgoKSG93IGRvZXMgdGhhdCBzb3VuZD8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Np
b25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
