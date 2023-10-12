Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC857C69DE
	for <lists+jfs-discussion@lfdr.de>; Thu, 12 Oct 2023 11:42:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qqsCr-0001yc-6l;
	Thu, 12 Oct 2023 09:42:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1qqsCp-0001yS-Mf
 for jfs-discussion@lists.sourceforge.net;
 Thu, 12 Oct 2023 09:42:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vj1bsy2Gunm8i8C/E8CXqhB/cI+iZsazxKAsUR5zHAo=; b=XQhUeH+WLyYqzeUl9uzEuD55Cq
 /4sVpaS+uNgCZm4cE/Z9GlE8GTYn6ZC5Wi5yNl5ob3DKii9HS4fcEdvorKb+PVlLfDDSnDDLhbkfL
 nHQmK6aluXjvshpZ2rEPpVXq++4DZAphnbKF2FJmmydCAFPbXXv51BE27siD0Tah4CVg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vj1bsy2Gunm8i8C/E8CXqhB/cI+iZsazxKAsUR5zHAo=; b=Atex2iuzh6kiJ1quZdl194qxNd
 X+XUsTIl6SMUTUR1IrJQtKB6LLbFUW40ku5U5D8ttLRv9pyySRyG9U50TN1stZj/rz7YJHj5T6uaF
 1TSsuTHUNufLjAi/pWWJvlsvgMcqeXNrn/2vfBDGdfV/8rgF1yeMLE7QyGF7xxLgLLHc=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qqsCg-0005l9-Uy for jfs-discussion@lists.sourceforge.net;
 Thu, 12 Oct 2023 09:42:10 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 425331F74B;
 Thu, 12 Oct 2023 09:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1697103712; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vj1bsy2Gunm8i8C/E8CXqhB/cI+iZsazxKAsUR5zHAo=;
 b=RtaNrwwdPmko1+Z5dMfMo8fk4BAdxuUKHQGrcfRW9XK5UBNcXt1ObAbPvfF9kaG3TKWbDW
 f1FU+5Qcf8DdK/mNL6l7iqkysgBtWdCK9a1dRycBmB08cDZdh9hvciWiX5zKIJEKtL/HIs
 fIxTNojv114ZA/OGxOzTa5LVQVqXgHA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1697103712;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vj1bsy2Gunm8i8C/E8CXqhB/cI+iZsazxKAsUR5zHAo=;
 b=8pEMSLQev2iW1GvcBoTUB1M+BNVeiceidtnBFKAQKqpAJYDTHIvoK8ab6eJL9WrqXDkg37
 bvB/aPwT9sr5enDg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 2FE4B139ED;
 Thu, 12 Oct 2023 09:41:52 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id iVCSC2C/J2ULdQAAMHmgww
 (envelope-from <jack@suse.cz>); Thu, 12 Oct 2023 09:41:52 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id B14F8A06B0; Thu, 12 Oct 2023 11:41:51 +0200 (CEST)
Date: Thu, 12 Oct 2023 11:41:51 +0200
From: Jan Kara <jack@suse.cz>
To: Christian Brauner <brauner@kernel.org>
Message-ID: <20231012094151.qrha5b2him43mom5@quack3>
References: <CAKPOu+-nC2bQTZYL0XTzJL6Tx4Pi1gLfNWCjU2Qz1f_5CbJc1w@mail.gmail.com>
 <20231011100541.sfn3prgtmp7hk2oj@quack3>
 <CAKPOu+_xdFALt9sgdd5w66Ab6KTqiy8+Z0Yd3Ss4+92jh8nCwg@mail.gmail.com>
 <20231011120655.ndb7bfasptjym3wl@quack3>
 <CAKPOu+-hLrrpZShHh0o6uc_KMW91suEd0_V_uzp5vMf4NM-8yw@mail.gmail.com>
 <CAKPOu+_0yjg=PrwAR8jKok8WskjdDEJOBtu3uKR_4Qtp8b7H1Q@mail.gmail.com>
 <20231011135922.4bij3ittlg4ujkd7@quack3>
 <20231011-braumeister-anrufen-62127dc64de0@brauner>
 <20231011162904.3dxkids7zzspcolp@quack3>
 <20231012-klebt-wahljahr-a29e40a2ea2a@brauner>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231012-klebt-wahljahr-a29e40a2ea2a@brauner>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu 12-10-23 11:22:29, Christian Brauner wrote: > On Wed, 
 Oct 11, 2023 at 06:29:04PM +0200, Jan Kara wrote: > > On Wed 11-10-23 17:27:37,
 Christian Brauner wrote: > > > On Wed, Oct 11, 2023 at 03:5 [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.cz]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.29 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qqsCg-0005l9-Uy
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
Cc: Dave Kleikamp <shaggy@kernel.org>,
 Max Kellermann <max.kellermann@ionos.com>, linux-ext4@vger.kernel.org,
 Jan Kara <jack@suse.cz>, Amir Goldstein <amir73il@gmail.com>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Yang Xu <xuyang2018.jy@fujitsu.com>, Ilya Dryomov <idryomov@gmail.com>,
 Xiubo Li <xiubli@redhat.com>, ceph-devel@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVGh1IDEyLTEwLTIzIDExOjIyOjI5LCBDaHJpc3RpYW4gQnJhdW5lciB3cm90ZToKPiBPbiBX
ZWQsIE9jdCAxMSwgMjAyMyBhdCAwNjoyOTowNFBNICswMjAwLCBKYW4gS2FyYSB3cm90ZToKPiA+
IE9uIFdlZCAxMS0xMC0yMyAxNzoyNzozNywgQ2hyaXN0aWFuIEJyYXVuZXIgd3JvdGU6Cj4gPiA+
IE9uIFdlZCwgT2N0IDExLCAyMDIzIGF0IDAzOjU5OjIyUE0gKzAyMDAsIEphbiBLYXJhIHdyb3Rl
Ogo+ID4gPiA+IE9uIFdlZCAxMS0xMC0yMyAxNDoyNzo0OSwgTWF4IEtlbGxlcm1hbm4gd3JvdGU6
Cj4gPiA+ID4gPiBPbiBXZWQsIE9jdCAxMSwgMjAyMyBhdCAyOjE44oCvUE0gTWF4IEtlbGxlcm1h
bm4gPG1heC5rZWxsZXJtYW5uQGlvbm9zLmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+IEJ1dCB3aXRo
b3V0IHRoZSBvdGhlciBmaWxlc3lzdGVtcy4gSSdsbCByZXNlbmQgaXQgd2l0aCBqdXN0IHRoZQo+
ID4gPiA+ID4gPiBwb3NpeF9hY2wuaCBodW5rLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBUaGlua2lu
ZyBhZ2FpbiwgSSBkb24ndCB0aGluayB0aGlzIGlzIHRoZSBwcm9wZXIgc29sdXRpb24uIFRoaXMg
bWF5Cj4gPiA+ID4gPiBzZXJ2ZXIgYXMgYSB3b3JrYXJvdW5kIHNvIHRob3NlIGJyb2tlbiBmaWxl
c3lzdGVtcyBkb24ndCBzdWZmZXIgZnJvbQo+ID4gPiA+ID4gdGhpcyBidWcsIGJ1dCBpdCdzIG5v
dCBwcm9wZXIuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IHBvc2l4X2FjbF9jcmVhdGUoKSBpcyBvbmx5
IHN1cHBvc2VkIHRvIGFwcHkgdGhlIHVtYXNrIGlmIHRoZSBpbm9kZQo+ID4gPiA+ID4gc3VwcG9y
dHMgQUNMczsgaWYgbm90LCB0aGUgVkZTIGlzIHN1cHBvc2VkIHRvIGRvIGl0LiBCdXQgaWYgdGhl
Cj4gPiA+ID4gPiBmaWxlc3lzdGVtIHByZXRlbmRzIHRvIGhhdmUgQUNMIHN1cHBvcnQgYnV0IHRo
ZSBrZXJuZWwgZG9lcyBub3QsIGl0J3MKPiA+ID4gPiA+IHJlYWxseSBhIGZpbGVzeXN0ZW0gYnVn
LiBIYWNraW5nIHRoZSB1bWFzayBjb2RlIGludG8KPiA+ID4gPiA+IHBvc2l4X2FjbF9jcmVhdGUo
KSBmb3IgdGhhdCBpbmNvbnNpc3RlbnQgY2FzZSBkb2Vzbid0IHNvdW5kIHJpZ2h0Lgo+ID4gPiA+
ID4gCj4gPiA+ID4gPiBBIGJldHRlciB3b3JrYXJvdW5kIHdvdWxkIGJlIHRoaXMgcGF0Y2g6Cj4g
PiA+ID4gPiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtbmZzL3Bh
dGNoLzE1MTYwMzc0NDY2Mi4yOTAzNS40OTEwMTYxMjY0MTI0ODc1NjU4LnN0Z2l0QHJhYmJpdC5p
bnRlcm4uY20tYWcvCj4gPiA+ID4gPiBJIHN1Ym1pdHRlZCBpdCBtb3JlIHRoYW4gNSB5ZWFycyBh
Z28sIGl0IGdvdCBvbmUgcG9zaXRpdmUgcmV2aWV3LCBidXQKPiA+ID4gPiA+IHdhcyBuZXZlciBt
ZXJnZWQuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRoaXMgcGF0Y2ggZW5hYmxlcyB0aGUgVkZTJ3Mg
dW1hc2sgY29kZSBldmVuIGlmIHRoZSBmaWxlc3lzdGVtCj4gPiA+ID4gPiBwcmVyZW50cyB0byBz
dXBwb3J0IEFDTHMuIFRoaXMgc3RpbGwgZG9lc24ndCBmaXggdGhlIGZpbGVzeXN0ZW0gYnVnLAo+
ID4gPiA+ID4gYnV0IG1ha2VzIFZGUydzIGJlaGF2aW9yIGNvbnNpc3RlbnQuCj4gPiA+ID4gCj4g
PiA+ID4gT0ssIHRoYXQgc29sdXRpb24gd29ya3MgZm9yIG1lIGFzIHdlbGwuIEkgYWdyZWUgaXQg
c2VlbXMgYSB0YWQgYml0IGNsZWFuZXIuCj4gPiA+ID4gQ2hyaXN0aWFuLCB3aGljaCBvbmUgd291
bGQgeW91IHByZWZlcj8KPiA+ID4gCj4gPiA+IFNvIGl0IGFsd2F5cyBidWdnZWQgbWUgdGhhdCBQ
T1NJWCBBQ0xzIHB1c2ggdW1hc2sgc3RyaXBwaW5nIGRvd24gaW50bwo+ID4gPiB0aGUgaW5kaXZp
ZHVhbCBmaWxlc3lzdGVtcyBidXQgaXQncyBoYXJkIHRvIGdldCByaWQgb2YgdGhpcy4gQW5kIHdl
Cj4gPiA+IHRyaWVkIHRvIGltcHJvdmUgdGhlIHNpdHVhdGlvbiBkdXJpbmcgdGhlIFBPU0lYIEFD
TCByZXdvcmsgYnkKPiA+ID4gaW50cm9kdWNpbmcgdmZzX3ByZXBhcmVfdW1hc2soKS4KPiA+ID4g
Cj4gPiA+IEFzaWRlIGZyb20gdGhhdCwgdGhlIHByb2JsZW0gaGFkIGJlZW4gdGhhdCBmaWxlc3lz
dGVtcyBsaWtlIG5mcyB2NAo+ID4gPiBpbnRlbnRpb25hbGx5IHJhaXNlZCBTQl9QT1NJWEFDTCB0
byBwcmV2ZW50IHVtYXNrIHN0cmlwcGluZyBpbiB0aGUgVkZTLgo+ID4gPiBJT1csIGZvciB0aGVt
IFNCX1BPU0lYQUNMIHdhcyBlcXVpdmFsZW50IHRvICJkb24ndCBhcHBseSBhbnkgdW1hc2siLgo+
ID4gCj4gPiBBaCwgd2hhdCBhIGhhY2suLi4KPiA+IAo+ID4gPiBBbmQgYWZhaWN0IG5mcyB2NCBo
YXMgaXQncyBvd24gdGhpbmcgZ29pbmcgb24gaG93IGFuZCB3aGVyZSB1bWFza3MgYXJlCj4gPiA+
IGFwcGxpZWQuIEhvd2V2ZXIsIHNpbmNlIHdlIG5vdyBoYXZlIHRoZSBmb2xsb3dpbmcgY29tbWl0
IGluIHZmcy5taXNjOgo+ID4gPiAKPiA+ID4gY29tbWl0IGY2MWI5YmIzZjgzODZhNWU1OWI0OWJm
MTMxMGY1YjM0ZjQ3YmNlZjkKPiA+ID4gQXV0aG9yOiAgICAgSmVmZiBMYXl0b24gPGpsYXl0b25A
a2VybmVsLm9yZz4KPiA+ID4gQXV0aG9yRGF0ZTogTW9uIFNlcCAxMSAyMDoyNTo1MCAyMDIzIC0w
NDAwCj4gPiA+IENvbW1pdDogICAgIENocmlzdGlhbiBCcmF1bmVyIDxicmF1bmVyQGtlcm5lbC5v
cmc+Cj4gPiA+IENvbW1pdERhdGU6IFRodSBTZXAgMjEgMTU6Mzc6NDcgMjAyMyArMDIwMAo+ID4g
PiAKPiA+ID4gICAgIGZzOiBhZGQgYSBuZXcgU0JfSV9OT1VNQVNLIGZsYWcKPiA+ID4gCj4gPiA+
ICAgICBTQl9QT1NJWEFDTCBtdXN0IGJlIHNldCB3aGVuIGEgZmlsZXN5c3RlbSBzdXBwb3J0cyBQ
T1NJWCBBQ0xzLCBidXQgTkZTdjQKPiA+ID4gICAgIGFsc28gc2V0cyB0aGlzIGZsYWcgdG8gcHJl
dmVudCB0aGUgVkZTIGZyb20gYXBwbHlpbmcgdGhlIHVtYXNrIG9uCj4gPiA+ICAgICBuZXdseS1j
cmVhdGVkIGZpbGVzLiBORlN2NCBkb2Vzbid0IHN1cHBvcnQgUE9TSVggQUNMcyBob3dldmVyLCB3
aGljaAo+ID4gPiAgICAgY2F1c2VzIGNvbmZ1c2lvbiB3aGVuIG90aGVyIHN1YnN5c3RlbXMgdHJ5
IHRvIHRlc3QgZm9yIHRoZW0uCj4gPiA+IAo+ID4gPiAgICAgQWRkIGEgbmV3IFNCX0lfTk9VTUFT
SyBmbGFnIHRoYXQgYWxsb3dzIGZpbGVzeXN0ZW1zIHRvIG9wdC1pbiB0byB1bWFzawo+ID4gPiAg
ICAgc3RyaXBwaW5nIHdpdGhvdXQgYWR2ZXJ0aXNpbmcgc3VwcG9ydCBmb3IgUE9TSVggQUNMcy4g
U2V0IHRoZSBuZXcgZmxhZwo+ID4gPiAgICAgb24gTkZTdjQgaW5zdGVhZCBvZiBTQl9QT1NJWEFD
TC4KPiA+ID4gCj4gPiA+ICAgICBBbHNvLCBtb3ZlIG1vZGVfc3RyaXBfdW1hc2sgdG8gbmFtZWku
aCBhbmQgY29udmVydCBpbml0X21rbm9kIGFuZAo+ID4gPiAgICAgaW5pdF9ta2RpciB0byB1c2Ug
aXQuCj4gPiA+IAo+ID4gPiAgICAgU2lnbmVkLW9mZi1ieTogSmVmZiBMYXl0b24gPGpsYXl0b25A
a2VybmVsLm9yZz4KPiA+ID4gICAgIE1lc3NhZ2UtSWQ6IDwyMDIzMDkxMS1hY2wtZml4LXYzLTEt
YjI1MzE1MzMzZjZjQGtlcm5lbC5vcmc+Cj4gPiA+ICAgICBTaWduZWQtb2ZmLWJ5OiBDaHJpc3Rp
YW4gQnJhdW5lciA8YnJhdW5lckBrZXJuZWwub3JnPgo+ID4gPiAKPiA+ID4gSSB0aGluayBpdCdz
IHBvc3NpYmxlIHRvIHBpY2sgdXAgdGhlIGZpcnN0IHBhdGNoIGxpbmtlZCBhYm92ZToKPiA+ID4g
ICAgCj4gPiA+IGZpeCB1bWFzayBvbiBORlMgd2l0aCBDT05GSUdfRlNfUE9TSVhfQUNMPW4gZG9l
c24ndCBsZWFkIHRvIGFueQo+ID4gPiAKPiA+ID4gYW5kIHNlZSB3aGV0aGVyIHdlIHNlZSBhbnkg
cmVncmVzc2lvbnMgZnJvbSB0aGlzLgo+ID4gPiAKPiA+ID4gVGhlIHNlY29uZCBwYXRjaCBJIGNh
bid0IGVhc2lseSBqdWRnZSB0aGF0IHNob3VsZCBnbyB0aHJvdWdoIG5mcyBpZiBhdAo+ID4gPiBh
bGwuCj4gPiA+IAo+ID4gPiBTbyBwcm9wb3NhbC9xdWVzdGlvbjogc2hvdWxkIHdlIHRha2UgdGhl
IGZpcnN0IHBhdGNoIGludG8gdmZzLm1pc2M/Cj4gPiAKPiA+IFNvdW5kcyBnb29kIHRvIG1lLiBJ
IGhhdmUgY2hlY2tlZCB3aGV0aGVyIHNvbWUgb3RoZXIgZmlsZXN5c3RlbSBkb2VzIG5vdAo+ID4g
dHJ5IHRvIHBsYXkgc2ltaWxhciBnYW1lcyBhcyBORlMgYW5kIGl0IGFwcGVhcnMgbm90IGFsdGhv
dWdoIG92ZXJsYXlmcyBkb2VzCj4gPiBzZWVtIHRvIHBsYXkgc29tZSBnYW1lcyB3aXRoIHVtYXNr
cy4KPiAKPiBJIHRoaW5rIHRoYXQgb3ZlcmxheWZzIHNldHMgU0JfUE9TSVhBQ0wgdW5jb25kaXRp
b25hbGx5IHRvIGVuc3VyZSB0aGF0Cj4gdGhlIHVwcGVyIGZpbGVzeXN0ZW0gY2FuIGRlY2lkZSB3
aGVyZSB0aGUgdW1hc2sgbmVlZHMgdG8gYmUgc3RyaXBwZWQuIElmCj4gdGhlIHVwcGVyIGZpbGVz
eXN0ZW0gZG9lc24ndCBoYXZlIFNCX1BPU0lYQUNMIHRoZW4gdGhlIHVtYXNrIHdpbGwgYmUKPiBz
dHJpcHBlZCBkaXJlY3RseSBpbiBlLmcuLCB2ZnNfY3JlYXRlKCksIGFuZCB2ZnNfdG1wZmlsZSgp
LiBJZiBpdCBkb2VzCj4gdGhlbiBpdCB3aWxsIGJlIGRvbmUgaW4gdGhlIHVwcGVyIGZpbGVzeXN0
ZW1zLgo+IAo+IFNvIHdpdGggdGhlIHBhdGNoIEkgbGlua2VkIGFib3ZlIHRoYXQgd2UgaGF2ZSBp
biB2ZnMubWlzYyB3ZSBzaG91bGQgYmUKPiBhYmxlIHRvICBjaGFuZ2Ugb3ZlcmxheWZzIHRvIGJl
aGF2ZSBzaW1pbGFyIHRvIE5GUzoKClllcCwgSSB3YXMgdGhpbmtpbmcgdGhhdCB0aGlzIG1pZ2h0
IGJlIHdoYXQgb3ZlcmxheWZzIHdhbnRzLiBCdXQgSSBrbm93CmZhciB0byBmZXcgYWJvdXQgb3Zl
cmxheWZzIHRvIGJlIHN1cmUgOykgVGhhdCdzIHdoeSBJJ3ZlIENDZWQgQW1pciBpbiBteQpwcmV2
aW91cyBlbWFpbC4uLgoKCQkJCQkJCQlIb256YQoKPiAKPiBkaWZmIC0tZ2l0IGEvZnMvb3Zlcmxh
eWZzL3N1cGVyLmMgYi9mcy9vdmVybGF5ZnMvc3VwZXIuYwo+IGluZGV4IDlmNDNmMGQzMDNhZC4u
MzYxMTg5YjY3NmIwIDEwMDY0NAo+IC0tLSBhL2ZzL292ZXJsYXlmcy9zdXBlci5jCj4gKysrIGIv
ZnMvb3ZlcmxheWZzL3N1cGVyLmMKPiBAQCAtMTQ4OSw4ICsxNDg5LDE2IEBAIGludCBvdmxfZmls
bF9zdXBlcihzdHJ1Y3Qgc3VwZXJfYmxvY2sgKnNiLCBzdHJ1Y3QgZnNfY29udGV4dCAqZmMpCj4g
ICAgICAgICBzYi0+c194YXR0ciA9IG9mcy0+Y29uZmlnLnVzZXJ4YXR0ciA/IG92bF91c2VyX3hh
dHRyX2hhbmRsZXJzIDoKPiAgICAgICAgICAgICAgICAgb3ZsX3RydXN0ZWRfeGF0dHJfaGFuZGxl
cnM7Cj4gICAgICAgICBzYi0+c19mc19pbmZvID0gb2ZzOwo+ICsjaWZkZWYgQ09ORklHX0ZTX1BP
U0lYX0FDTAo+ICAgICAgICAgc2ItPnNfZmxhZ3MgfD0gU0JfUE9TSVhBQ0w7Cj4gKyNlbmRpZgo+
ICAgICAgICAgc2ItPnNfaWZsYWdzIHw9IFNCX0lfU0tJUF9TWU5DIHwgU0JfSV9JTUFfVU5WRVJJ
RklBQkxFX1NJR05BVFVSRTsKPiArICAgICAgIC8qCj4gKyAgICAgICAgKiBFbnN1cmUgdGhhdCB1
bWFzayBoYW5kbGluZyBpcyBkb25lIGJ5IHRoZSBmaWxlc3lzdGVtcyB1c2VkCj4gKyAgICAgICAg
KiBmb3IgdGhlIHRoZSB1cHBlciBsYXllciBpbnN0ZWFkIG9mIG92ZXJsYXlmcyBhcyB0aGF0IHdv
dWxkCj4gKyAgICAgICAgKiBsZWFkIHRvIHVuZXhwZWN0ZWQgcmVzdWx0cy4KPiArICAgICAgICAq
Lwo+ICsgICAgICAgc2ItPnNfaWZsYWdzIHw9IFNCX0lfTk9VTUFTSzsKPiAKPiAgICAgICAgIGVy
ciA9IC1FTk9NRU07Cj4gICAgICAgICByb290X2RlbnRyeSA9IG92bF9nZXRfcm9vdChzYiwgY3R4
LT51cHBlci5kZW50cnksIG9lKTsKPiAKPiBXaGljaCBtZWFucyB0aGF0IHVtYXNrIGhhbmRsaW5n
IHdpbGwgYmUgZG9uZSBieSB0aGUgdXBwZXIgZmlsZXN5c3RlbXMKPiBqdXN0IGFzIGlzIGRvbmUg
cmlnaHQgbm93IGFuZCBvdmVybGF5ZnMgY2FuIHN0b3AgYWR2ZXJ0aXNpbmcgU0JfUE9TSVhBQ0wK
PiBzdXBwb3J0IG9uIGEga2VybmVsIHRoYXQgZG9lc24ndCBoYXZlIHN1cHBvcnQgZm9yIGl0IGNv
bXBpbGVkIGluLgo+IAo+IEhvdyBkb2VzIHRoYXQgc291bmQ/Ci0tIApKYW4gS2FyYSA8amFja0Bz
dXNlLmNvbT4KU1VTRSBMYWJzLCBDUgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lv
bkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlz
dHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
