Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D96EE7C5920
	for <lists+jfs-discussion@lfdr.de>; Wed, 11 Oct 2023 18:29:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qqc5F-0002UP-AO;
	Wed, 11 Oct 2023 16:29:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1qqc5D-0002U7-BM
 for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 16:29:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kYo77x54AzSd+UJL48y6CRA7yZ5+4RMlae1FSxp7kUY=; b=CbvaAyiY9FSNap/tbVi02hig7m
 bkWtDZyDsXUv3I+XNabeufZe9nJXT5vNsZhA9PN4JTsGCBja8Wkchre+Oh1+fbCpcldjSKY4nQAyl
 VTKeEF/JItzM7qS2W6JoIuYeNJBPf6aRnxPTSGqqCZ/zyLJdW4Q/vsVrt6nMeYywmRc8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kYo77x54AzSd+UJL48y6CRA7yZ5+4RMlae1FSxp7kUY=; b=SkBDwDnXlqHmB6klLOhlAHe5kX
 tPUdII1MbvgMY7PUJlnh3qk8K4lplvPh6cN/XzPqraFvdkrk7znG0lhP+4Io+7QCLsJcb4guQZi9H
 BFmn9JPq4y5XwhzWO0zJNGbju8DRJXXmGNfI1SRfD6QztvRZouQy0IbRqizDGnGidEA0=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qqc59-0008Jm-Ct for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 16:29:15 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 553701FF02;
 Wed, 11 Oct 2023 16:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1697041745; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kYo77x54AzSd+UJL48y6CRA7yZ5+4RMlae1FSxp7kUY=;
 b=XHPjHzAxZGN8OAcbkRlJpzZcxSqh0PmgTt4npi1tF+csKiWIXSr22Q66FJM2N/QWXLTuWe
 8qU5i1XbtqtXqXqGt/BP2COPochp4eKiQbidoNtY9W7y4PLwiWnw+G09P8eyOvIpOvA4z+
 moXDGeLe/pOS1YzwKZ2VAtQlYMqPsxs=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1697041745;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kYo77x54AzSd+UJL48y6CRA7yZ5+4RMlae1FSxp7kUY=;
 b=T1jExGE6EAUwcpMkNyi3OKySzAjG7myKC5zvA28x5gD6fljvVqNo3e5cwm9l9v5cfaJ+fM
 pqEjb6y8O4ZxlvDw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 43D03134F5;
 Wed, 11 Oct 2023 16:29:05 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id kvp+EFHNJmVlLQAAMHmgww
 (envelope-from <jack@suse.cz>); Wed, 11 Oct 2023 16:29:05 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id C9ED1A05BC; Wed, 11 Oct 2023 18:29:04 +0200 (CEST)
Date: Wed, 11 Oct 2023 18:29:04 +0200
From: Jan Kara <jack@suse.cz>
To: Christian Brauner <brauner@kernel.org>
Message-ID: <20231011162904.3dxkids7zzspcolp@quack3>
References: <20231009144340.418904-1-max.kellermann@ionos.com>
 <20231010131125.3uyfkqbcetfcqsve@quack3>
 <CAKPOu+-nC2bQTZYL0XTzJL6Tx4Pi1gLfNWCjU2Qz1f_5CbJc1w@mail.gmail.com>
 <20231011100541.sfn3prgtmp7hk2oj@quack3>
 <CAKPOu+_xdFALt9sgdd5w66Ab6KTqiy8+Z0Yd3Ss4+92jh8nCwg@mail.gmail.com>
 <20231011120655.ndb7bfasptjym3wl@quack3>
 <CAKPOu+-hLrrpZShHh0o6uc_KMW91suEd0_V_uzp5vMf4NM-8yw@mail.gmail.com>
 <CAKPOu+_0yjg=PrwAR8jKok8WskjdDEJOBtu3uKR_4Qtp8b7H1Q@mail.gmail.com>
 <20231011135922.4bij3ittlg4ujkd7@quack3>
 <20231011-braumeister-anrufen-62127dc64de0@brauner>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231011-braumeister-anrufen-62127dc64de0@brauner>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed 11-10-23 17:27:37, Christian Brauner wrote: > On Wed,
    Oct 11, 2023 at 03:59:22PM +0200, Jan Kara wrote: > > On Wed 11-10-23 14:27:49,
    Max Kellermann wrote: > > > On Wed, Oct 11, 2023 at 2:18  [...] 
 
 Content analysis details:   (-2.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [195.135.220.29 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1qqc59-0008Jm-Ct
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

T24gV2VkIDExLTEwLTIzIDE3OjI3OjM3LCBDaHJpc3RpYW4gQnJhdW5lciB3cm90ZToKPiBPbiBX
ZWQsIE9jdCAxMSwgMjAyMyBhdCAwMzo1OToyMlBNICswMjAwLCBKYW4gS2FyYSB3cm90ZToKPiA+
IE9uIFdlZCAxMS0xMC0yMyAxNDoyNzo0OSwgTWF4IEtlbGxlcm1hbm4gd3JvdGU6Cj4gPiA+IE9u
IFdlZCwgT2N0IDExLCAyMDIzIGF0IDI6MTjigK9QTSBNYXggS2VsbGVybWFubiA8bWF4LmtlbGxl
cm1hbm5AaW9ub3MuY29tPiB3cm90ZToKPiA+ID4gPiBCdXQgd2l0aG91dCB0aGUgb3RoZXIgZmls
ZXN5c3RlbXMuIEknbGwgcmVzZW5kIGl0IHdpdGgganVzdCB0aGUKPiA+ID4gPiBwb3NpeF9hY2wu
aCBodW5rLgo+ID4gPiAKPiA+ID4gVGhpbmtpbmcgYWdhaW4sIEkgZG9uJ3QgdGhpbmsgdGhpcyBp
cyB0aGUgcHJvcGVyIHNvbHV0aW9uLiBUaGlzIG1heQo+ID4gPiBzZXJ2ZXIgYXMgYSB3b3JrYXJv
dW5kIHNvIHRob3NlIGJyb2tlbiBmaWxlc3lzdGVtcyBkb24ndCBzdWZmZXIgZnJvbQo+ID4gPiB0
aGlzIGJ1ZywgYnV0IGl0J3Mgbm90IHByb3Blci4KPiA+ID4gCj4gPiA+IHBvc2l4X2FjbF9jcmVh
dGUoKSBpcyBvbmx5IHN1cHBvc2VkIHRvIGFwcHkgdGhlIHVtYXNrIGlmIHRoZSBpbm9kZQo+ID4g
PiBzdXBwb3J0cyBBQ0xzOyBpZiBub3QsIHRoZSBWRlMgaXMgc3VwcG9zZWQgdG8gZG8gaXQuIEJ1
dCBpZiB0aGUKPiA+ID4gZmlsZXN5c3RlbSBwcmV0ZW5kcyB0byBoYXZlIEFDTCBzdXBwb3J0IGJ1
dCB0aGUga2VybmVsIGRvZXMgbm90LCBpdCdzCj4gPiA+IHJlYWxseSBhIGZpbGVzeXN0ZW0gYnVn
LiBIYWNraW5nIHRoZSB1bWFzayBjb2RlIGludG8KPiA+ID4gcG9zaXhfYWNsX2NyZWF0ZSgpIGZv
ciB0aGF0IGluY29uc2lzdGVudCBjYXNlIGRvZXNuJ3Qgc291bmQgcmlnaHQuCj4gPiA+IAo+ID4g
PiBBIGJldHRlciB3b3JrYXJvdW5kIHdvdWxkIGJlIHRoaXMgcGF0Y2g6Cj4gPiA+IGh0dHBzOi8v
cGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1uZnMvcGF0Y2gvMTUxNjAzNzQ0NjYy
LjI5MDM1LjQ5MTAxNjEyNjQxMjQ4NzU2NTguc3RnaXRAcmFiYml0LmludGVybi5jbS1hZy8KPiA+
ID4gSSBzdWJtaXR0ZWQgaXQgbW9yZSB0aGFuIDUgeWVhcnMgYWdvLCBpdCBnb3Qgb25lIHBvc2l0
aXZlIHJldmlldywgYnV0Cj4gPiA+IHdhcyBuZXZlciBtZXJnZWQuCj4gPiA+IAo+ID4gPiBUaGlz
IHBhdGNoIGVuYWJsZXMgdGhlIFZGUydzIHVtYXNrIGNvZGUgZXZlbiBpZiB0aGUgZmlsZXN5c3Rl
bQo+ID4gPiBwcmVyZW50cyB0byBzdXBwb3J0IEFDTHMuIFRoaXMgc3RpbGwgZG9lc24ndCBmaXgg
dGhlIGZpbGVzeXN0ZW0gYnVnLAo+ID4gPiBidXQgbWFrZXMgVkZTJ3MgYmVoYXZpb3IgY29uc2lz
dGVudC4KPiA+IAo+ID4gT0ssIHRoYXQgc29sdXRpb24gd29ya3MgZm9yIG1lIGFzIHdlbGwuIEkg
YWdyZWUgaXQgc2VlbXMgYSB0YWQgYml0IGNsZWFuZXIuCj4gPiBDaHJpc3RpYW4sIHdoaWNoIG9u
ZSB3b3VsZCB5b3UgcHJlZmVyPwo+IAo+IFNvIGl0IGFsd2F5cyBidWdnZWQgbWUgdGhhdCBQT1NJ
WCBBQ0xzIHB1c2ggdW1hc2sgc3RyaXBwaW5nIGRvd24gaW50bwo+IHRoZSBpbmRpdmlkdWFsIGZp
bGVzeXN0ZW1zIGJ1dCBpdCdzIGhhcmQgdG8gZ2V0IHJpZCBvZiB0aGlzLiBBbmQgd2UKPiB0cmll
ZCB0byBpbXByb3ZlIHRoZSBzaXR1YXRpb24gZHVyaW5nIHRoZSBQT1NJWCBBQ0wgcmV3b3JrIGJ5
Cj4gaW50cm9kdWNpbmcgdmZzX3ByZXBhcmVfdW1hc2soKS4KPiAKPiBBc2lkZSBmcm9tIHRoYXQs
IHRoZSBwcm9ibGVtIGhhZCBiZWVuIHRoYXQgZmlsZXN5c3RlbXMgbGlrZSBuZnMgdjQKPiBpbnRl
bnRpb25hbGx5IHJhaXNlZCBTQl9QT1NJWEFDTCB0byBwcmV2ZW50IHVtYXNrIHN0cmlwcGluZyBp
biB0aGUgVkZTLgo+IElPVywgZm9yIHRoZW0gU0JfUE9TSVhBQ0wgd2FzIGVxdWl2YWxlbnQgdG8g
ImRvbid0IGFwcGx5IGFueSB1bWFzayIuCgpBaCwgd2hhdCBhIGhhY2suLi4KCj4gQW5kIGFmYWlj
dCBuZnMgdjQgaGFzIGl0J3Mgb3duIHRoaW5nIGdvaW5nIG9uIGhvdyBhbmQgd2hlcmUgdW1hc2tz
IGFyZQo+IGFwcGxpZWQuIEhvd2V2ZXIsIHNpbmNlIHdlIG5vdyBoYXZlIHRoZSBmb2xsb3dpbmcg
Y29tbWl0IGluIHZmcy5taXNjOgo+IAo+IGNvbW1pdCBmNjFiOWJiM2Y4Mzg2YTVlNTliNDliZjEz
MTBmNWIzNGY0N2JjZWY5Cj4gQXV0aG9yOiAgICAgSmVmZiBMYXl0b24gPGpsYXl0b25Aa2VybmVs
Lm9yZz4KPiBBdXRob3JEYXRlOiBNb24gU2VwIDExIDIwOjI1OjUwIDIwMjMgLTA0MDAKPiBDb21t
aXQ6ICAgICBDaHJpc3RpYW4gQnJhdW5lciA8YnJhdW5lckBrZXJuZWwub3JnPgo+IENvbW1pdERh
dGU6IFRodSBTZXAgMjEgMTU6Mzc6NDcgMjAyMyArMDIwMAo+IAo+ICAgICBmczogYWRkIGEgbmV3
IFNCX0lfTk9VTUFTSyBmbGFnCj4gCj4gICAgIFNCX1BPU0lYQUNMIG11c3QgYmUgc2V0IHdoZW4g
YSBmaWxlc3lzdGVtIHN1cHBvcnRzIFBPU0lYIEFDTHMsIGJ1dCBORlN2NAo+ICAgICBhbHNvIHNl
dHMgdGhpcyBmbGFnIHRvIHByZXZlbnQgdGhlIFZGUyBmcm9tIGFwcGx5aW5nIHRoZSB1bWFzayBv
bgo+ICAgICBuZXdseS1jcmVhdGVkIGZpbGVzLiBORlN2NCBkb2Vzbid0IHN1cHBvcnQgUE9TSVgg
QUNMcyBob3dldmVyLCB3aGljaAo+ICAgICBjYXVzZXMgY29uZnVzaW9uIHdoZW4gb3RoZXIgc3Vi
c3lzdGVtcyB0cnkgdG8gdGVzdCBmb3IgdGhlbS4KPiAKPiAgICAgQWRkIGEgbmV3IFNCX0lfTk9V
TUFTSyBmbGFnIHRoYXQgYWxsb3dzIGZpbGVzeXN0ZW1zIHRvIG9wdC1pbiB0byB1bWFzawo+ICAg
ICBzdHJpcHBpbmcgd2l0aG91dCBhZHZlcnRpc2luZyBzdXBwb3J0IGZvciBQT1NJWCBBQ0xzLiBT
ZXQgdGhlIG5ldyBmbGFnCj4gICAgIG9uIE5GU3Y0IGluc3RlYWQgb2YgU0JfUE9TSVhBQ0wuCj4g
Cj4gICAgIEFsc28sIG1vdmUgbW9kZV9zdHJpcF91bWFzayB0byBuYW1laS5oIGFuZCBjb252ZXJ0
IGluaXRfbWtub2QgYW5kCj4gICAgIGluaXRfbWtkaXIgdG8gdXNlIGl0Lgo+IAo+ICAgICBTaWdu
ZWQtb2ZmLWJ5OiBKZWZmIExheXRvbiA8amxheXRvbkBrZXJuZWwub3JnPgo+ICAgICBNZXNzYWdl
LUlkOiA8MjAyMzA5MTEtYWNsLWZpeC12My0xLWIyNTMxNTMzM2Y2Y0BrZXJuZWwub3JnPgo+ICAg
ICBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gQnJhdW5lciA8YnJhdW5lckBrZXJuZWwub3JnPgo+
IAo+IEkgdGhpbmsgaXQncyBwb3NzaWJsZSB0byBwaWNrIHVwIHRoZSBmaXJzdCBwYXRjaCBsaW5r
ZWQgYWJvdmU6Cj4gICAgCj4gZml4IHVtYXNrIG9uIE5GUyB3aXRoIENPTkZJR19GU19QT1NJWF9B
Q0w9biBkb2Vzbid0IGxlYWQgdG8gYW55Cj4gCj4gYW5kIHNlZSB3aGV0aGVyIHdlIHNlZSBhbnkg
cmVncmVzc2lvbnMgZnJvbSB0aGlzLgo+IAo+IFRoZSBzZWNvbmQgcGF0Y2ggSSBjYW4ndCBlYXNp
bHkganVkZ2UgdGhhdCBzaG91bGQgZ28gdGhyb3VnaCBuZnMgaWYgYXQKPiBhbGwuCj4gCj4gU28g
cHJvcG9zYWwvcXVlc3Rpb246IHNob3VsZCB3ZSB0YWtlIHRoZSBmaXJzdCBwYXRjaCBpbnRvIHZm
cy5taXNjPwoKU291bmRzIGdvb2QgdG8gbWUuIEkgaGF2ZSBjaGVja2VkIHdoZXRoZXIgc29tZSBv
dGhlciBmaWxlc3lzdGVtIGRvZXMgbm90CnRyeSB0byBwbGF5IHNpbWlsYXIgZ2FtZXMgYXMgTkZT
IGFuZCBpdCBhcHBlYXJzIG5vdCBhbHRob3VnaCBvdmVybGF5ZnMgZG9lcwpzZWVtIHRvIHBsYXkg
c29tZSBnYW1lcyB3aXRoIHVtYXNrcy4KCgkJCQkJCQkJSG9uemEKLS0gCkphbiBLYXJhIDxqYWNr
QHN1c2UuY29tPgpTVVNFIExhYnMsIENSCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNz
aW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
