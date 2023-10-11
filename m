Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 407537C5815
	for <lists+jfs-discussion@lfdr.de>; Wed, 11 Oct 2023 17:28:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qqb7s-0007O9-Gc;
	Wed, 11 Oct 2023 15:27:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1qqb7q-0007Nt-Do
 for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 15:27:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7JzoeY751I/pMpp2ntyv4pGkrjgM0+JZ/q+wG6P5xPU=; b=IDvIRXy8aFFdBrWQdfGSJpIWI3
 3YCSI04+ji87k4TCngIOjsKFy2/zluglLw/qX9QSxNkY7JwPJ5JV9S57Dbqiftm5XkQahopHJfmix
 PhPmKNJnqQH7gTcwK5JtRgEypkrITmRThwSqMW1Hjhk5smxTwXYyAWqvuJ8lfPXy5lMc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7JzoeY751I/pMpp2ntyv4pGkrjgM0+JZ/q+wG6P5xPU=; b=lUGSXBc/FULZREh4IAZN3ydola
 vc7+5GuV0xPf/jhGq4BHPPpuEHaTPYPFe+q5c28ku3aH2ZeJ+Q9aAGBOmB8JF+Nt/YgLDfFL+x+Mn
 tgnABzCJBqJ+wtC85afeoIhXncGAfuloV1MGjuPXmFJvDMs4AfvJsnbDCIDj/qkMgg+I=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qqb7o-00Bvar-9m for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 15:27:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 20AE3CE2449;
 Wed, 11 Oct 2023 15:27:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DB8CC433C7;
 Wed, 11 Oct 2023 15:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1697038063;
 bh=7RZyiacWyfzPvWEqzLgY4Ad7VtrgFG6HkGvT4m3kmO8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TaZpnSMEaI0DGU84iKsQFVVPvyC16VvEM8T5n460Au6MNQ/ww2lxz4UfQ+DA6vXFm
 BCtrP7/qifoV3YuL88v5Z4hcMkOI/aOIq9hyegqYo11WsSBfpE1ueICf/cUBdDE9Bh
 A+N2mupq/0QsAcz+XUx3VosdLofH9isxy1pRIIJNYMcYdcT28SYP9Ba8kkcZeNF5g0
 ZNuBaGoPPHI6az5feLlT4O9rib8qxW48pAN9rCw9yaJHhnk2reRwFnoBTVt0Bu3F2a
 V3k//nJlWORSya2SLRtvjvZ6ykCCdUchhQINAPcQQTeolGD+jWvQIO2+kVnB8rQERq
 hqKdJxh8IxFnA==
Date: Wed, 11 Oct 2023 17:27:37 +0200
To: Jan Kara <jack@suse.cz>, Max Kellermann <max.kellermann@ionos.com>
Message-ID: <20231011-braumeister-anrufen-62127dc64de0@brauner>
References: <69dda7be-d7c8-401f-89f3-7a5ca5550e2f@oracle.com>
 <20231009144340.418904-1-max.kellermann@ionos.com>
 <20231010131125.3uyfkqbcetfcqsve@quack3>
 <CAKPOu+-nC2bQTZYL0XTzJL6Tx4Pi1gLfNWCjU2Qz1f_5CbJc1w@mail.gmail.com>
 <20231011100541.sfn3prgtmp7hk2oj@quack3>
 <CAKPOu+_xdFALt9sgdd5w66Ab6KTqiy8+Z0Yd3Ss4+92jh8nCwg@mail.gmail.com>
 <20231011120655.ndb7bfasptjym3wl@quack3>
 <CAKPOu+-hLrrpZShHh0o6uc_KMW91suEd0_V_uzp5vMf4NM-8yw@mail.gmail.com>
 <CAKPOu+_0yjg=PrwAR8jKok8WskjdDEJOBtu3uKR_4Qtp8b7H1Q@mail.gmail.com>
 <20231011135922.4bij3ittlg4ujkd7@quack3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231011135922.4bij3ittlg4ujkd7@quack3>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Oct 11, 2023 at 03:59:22PM +0200, Jan Kara wrote:
   > On Wed 11-10-23 14:27:49, Max Kellermann wrote: > > On Wed, Oct 11, 2023
    at 2:18 PM Max Kellermann <max.kellermann@ionos.com> wrote: > > > [...]
    
 
 Content analysis details:   (-2.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [145.40.73.55 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qqb7o-00Bvar-9m
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, Yang Xu <xuyang2018.jy@fujitsu.com>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Ilya Dryomov <idryomov@gmail.com>, Xiubo Li <xiubli@redhat.com>,
 ceph-devel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gV2VkLCBPY3QgMTEsIDIwMjMgYXQgMDM6NTk6MjJQTSArMDIwMCwgSmFuIEthcmEgd3JvdGU6
Cj4gT24gV2VkIDExLTEwLTIzIDE0OjI3OjQ5LCBNYXggS2VsbGVybWFubiB3cm90ZToKPiA+IE9u
IFdlZCwgT2N0IDExLCAyMDIzIGF0IDI6MTjigK9QTSBNYXggS2VsbGVybWFubiA8bWF4LmtlbGxl
cm1hbm5AaW9ub3MuY29tPiB3cm90ZToKPiA+ID4gQnV0IHdpdGhvdXQgdGhlIG90aGVyIGZpbGVz
eXN0ZW1zLiBJJ2xsIHJlc2VuZCBpdCB3aXRoIGp1c3QgdGhlCj4gPiA+IHBvc2l4X2FjbC5oIGh1
bmsuCj4gPiAKPiA+IFRoaW5raW5nIGFnYWluLCBJIGRvbid0IHRoaW5rIHRoaXMgaXMgdGhlIHBy
b3BlciBzb2x1dGlvbi4gVGhpcyBtYXkKPiA+IHNlcnZlciBhcyBhIHdvcmthcm91bmQgc28gdGhv
c2UgYnJva2VuIGZpbGVzeXN0ZW1zIGRvbid0IHN1ZmZlciBmcm9tCj4gPiB0aGlzIGJ1ZywgYnV0
IGl0J3Mgbm90IHByb3Blci4KPiA+IAo+ID4gcG9zaXhfYWNsX2NyZWF0ZSgpIGlzIG9ubHkgc3Vw
cG9zZWQgdG8gYXBweSB0aGUgdW1hc2sgaWYgdGhlIGlub2RlCj4gPiBzdXBwb3J0cyBBQ0xzOyBp
ZiBub3QsIHRoZSBWRlMgaXMgc3VwcG9zZWQgdG8gZG8gaXQuIEJ1dCBpZiB0aGUKPiA+IGZpbGVz
eXN0ZW0gcHJldGVuZHMgdG8gaGF2ZSBBQ0wgc3VwcG9ydCBidXQgdGhlIGtlcm5lbCBkb2VzIG5v
dCwgaXQncwo+ID4gcmVhbGx5IGEgZmlsZXN5c3RlbSBidWcuIEhhY2tpbmcgdGhlIHVtYXNrIGNv
ZGUgaW50bwo+ID4gcG9zaXhfYWNsX2NyZWF0ZSgpIGZvciB0aGF0IGluY29uc2lzdGVudCBjYXNl
IGRvZXNuJ3Qgc291bmQgcmlnaHQuCj4gPiAKPiA+IEEgYmV0dGVyIHdvcmthcm91bmQgd291bGQg
YmUgdGhpcyBwYXRjaDoKPiA+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9s
aW51eC1uZnMvcGF0Y2gvMTUxNjAzNzQ0NjYyLjI5MDM1LjQ5MTAxNjEyNjQxMjQ4NzU2NTguc3Rn
aXRAcmFiYml0LmludGVybi5jbS1hZy8KPiA+IEkgc3VibWl0dGVkIGl0IG1vcmUgdGhhbiA1IHll
YXJzIGFnbywgaXQgZ290IG9uZSBwb3NpdGl2ZSByZXZpZXcsIGJ1dAo+ID4gd2FzIG5ldmVyIG1l
cmdlZC4KPiA+IAo+ID4gVGhpcyBwYXRjaCBlbmFibGVzIHRoZSBWRlMncyB1bWFzayBjb2RlIGV2
ZW4gaWYgdGhlIGZpbGVzeXN0ZW0KPiA+IHByZXJlbnRzIHRvIHN1cHBvcnQgQUNMcy4gVGhpcyBz
dGlsbCBkb2Vzbid0IGZpeCB0aGUgZmlsZXN5c3RlbSBidWcsCj4gPiBidXQgbWFrZXMgVkZTJ3Mg
YmVoYXZpb3IgY29uc2lzdGVudC4KPiAKPiBPSywgdGhhdCBzb2x1dGlvbiB3b3JrcyBmb3IgbWUg
YXMgd2VsbC4gSSBhZ3JlZSBpdCBzZWVtcyBhIHRhZCBiaXQgY2xlYW5lci4KPiBDaHJpc3RpYW4s
IHdoaWNoIG9uZSB3b3VsZCB5b3UgcHJlZmVyPwoKU28gaXQgYWx3YXlzIGJ1Z2dlZCBtZSB0aGF0
IFBPU0lYIEFDTHMgcHVzaCB1bWFzayBzdHJpcHBpbmcgZG93biBpbnRvCnRoZSBpbmRpdmlkdWFs
IGZpbGVzeXN0ZW1zIGJ1dCBpdCdzIGhhcmQgdG8gZ2V0IHJpZCBvZiB0aGlzLiBBbmQgd2UKdHJp
ZWQgdG8gaW1wcm92ZSB0aGUgc2l0dWF0aW9uIGR1cmluZyB0aGUgUE9TSVggQUNMIHJld29yayBi
eQppbnRyb2R1Y2luZyB2ZnNfcHJlcGFyZV91bWFzaygpLgoKQXNpZGUgZnJvbSB0aGF0LCB0aGUg
cHJvYmxlbSBoYWQgYmVlbiB0aGF0IGZpbGVzeXN0ZW1zIGxpa2UgbmZzIHY0CmludGVudGlvbmFs
bHkgcmFpc2VkIFNCX1BPU0lYQUNMIHRvIHByZXZlbnQgdW1hc2sgc3RyaXBwaW5nIGluIHRoZSBW
RlMuCklPVywgZm9yIHRoZW0gU0JfUE9TSVhBQ0wgd2FzIGVxdWl2YWxlbnQgdG8gImRvbid0IGFw
cGx5IGFueSB1bWFzayIuCgpBbmQgYWZhaWN0IG5mcyB2NCBoYXMgaXQncyBvd24gdGhpbmcgZ29p
bmcgb24gaG93IGFuZCB3aGVyZSB1bWFza3MgYXJlCmFwcGxpZWQuIEhvd2V2ZXIsIHNpbmNlIHdl
IG5vdyBoYXZlIHRoZSBmb2xsb3dpbmcgY29tbWl0IGluIHZmcy5taXNjOgoKY29tbWl0IGY2MWI5
YmIzZjgzODZhNWU1OWI0OWJmMTMxMGY1YjM0ZjQ3YmNlZjkKQXV0aG9yOiAgICAgSmVmZiBMYXl0
b24gPGpsYXl0b25Aa2VybmVsLm9yZz4KQXV0aG9yRGF0ZTogTW9uIFNlcCAxMSAyMDoyNTo1MCAy
MDIzIC0wNDAwCkNvbW1pdDogICAgIENocmlzdGlhbiBCcmF1bmVyIDxicmF1bmVyQGtlcm5lbC5v
cmc+CkNvbW1pdERhdGU6IFRodSBTZXAgMjEgMTU6Mzc6NDcgMjAyMyArMDIwMAoKICAgIGZzOiBh
ZGQgYSBuZXcgU0JfSV9OT1VNQVNLIGZsYWcKCiAgICBTQl9QT1NJWEFDTCBtdXN0IGJlIHNldCB3
aGVuIGEgZmlsZXN5c3RlbSBzdXBwb3J0cyBQT1NJWCBBQ0xzLCBidXQgTkZTdjQKICAgIGFsc28g
c2V0cyB0aGlzIGZsYWcgdG8gcHJldmVudCB0aGUgVkZTIGZyb20gYXBwbHlpbmcgdGhlIHVtYXNr
IG9uCiAgICBuZXdseS1jcmVhdGVkIGZpbGVzLiBORlN2NCBkb2Vzbid0IHN1cHBvcnQgUE9TSVgg
QUNMcyBob3dldmVyLCB3aGljaAogICAgY2F1c2VzIGNvbmZ1c2lvbiB3aGVuIG90aGVyIHN1YnN5
c3RlbXMgdHJ5IHRvIHRlc3QgZm9yIHRoZW0uCgogICAgQWRkIGEgbmV3IFNCX0lfTk9VTUFTSyBm
bGFnIHRoYXQgYWxsb3dzIGZpbGVzeXN0ZW1zIHRvIG9wdC1pbiB0byB1bWFzawogICAgc3RyaXBw
aW5nIHdpdGhvdXQgYWR2ZXJ0aXNpbmcgc3VwcG9ydCBmb3IgUE9TSVggQUNMcy4gU2V0IHRoZSBu
ZXcgZmxhZwogICAgb24gTkZTdjQgaW5zdGVhZCBvZiBTQl9QT1NJWEFDTC4KCiAgICBBbHNvLCBt
b3ZlIG1vZGVfc3RyaXBfdW1hc2sgdG8gbmFtZWkuaCBhbmQgY29udmVydCBpbml0X21rbm9kIGFu
ZAogICAgaW5pdF9ta2RpciB0byB1c2UgaXQuCgogICAgU2lnbmVkLW9mZi1ieTogSmVmZiBMYXl0
b24gPGpsYXl0b25Aa2VybmVsLm9yZz4KICAgIE1lc3NhZ2UtSWQ6IDwyMDIzMDkxMS1hY2wtZml4
LXYzLTEtYjI1MzE1MzMzZjZjQGtlcm5lbC5vcmc+CiAgICBTaWduZWQtb2ZmLWJ5OiBDaHJpc3Rp
YW4gQnJhdW5lciA8YnJhdW5lckBrZXJuZWwub3JnPgoKSSB0aGluayBpdCdzIHBvc3NpYmxlIHRv
IHBpY2sgdXAgdGhlIGZpcnN0IHBhdGNoIGxpbmtlZCBhYm92ZToKICAgCmZpeCB1bWFzayBvbiBO
RlMgd2l0aCBDT05GSUdfRlNfUE9TSVhfQUNMPW4gZG9lc24ndCBsZWFkIHRvIGFueQoKYW5kIHNl
ZSB3aGV0aGVyIHdlIHNlZSBhbnkgcmVncmVzc2lvbnMgZnJvbSB0aGlzLgoKVGhlIHNlY29uZCBw
YXRjaCBJIGNhbid0IGVhc2lseSBqdWRnZSB0aGF0IHNob3VsZCBnbyB0aHJvdWdoIG5mcyBpZiBh
dAphbGwuCgpTbyBwcm9wb3NhbC9xdWVzdGlvbjogc2hvdWxkIHdlIHRha2UgdGhlIGZpcnN0IHBh
dGNoIGludG8gdmZzLm1pc2M/CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
