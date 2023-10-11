Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B17BD7C560C
	for <lists+jfs-discussion@lfdr.de>; Wed, 11 Oct 2023 15:59:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qqZkP-0000hy-Fn;
	Wed, 11 Oct 2023 13:59:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1qqZkN-0000hs-LG
 for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 13:59:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zDxQm9+A2hHDdkBqBnjxp+FzgrU9wEMk6rAhmb/Kp9s=; b=Smb7p3DLQYkJxQygGTYccY7Dje
 qnqMzBkYci5wGqaHiN440jbufi0yQj1gGzAiDAb3xmMDYnekxRHAdox32hdoUOoxlLpkxsJTj2cum
 hPQ3cqXBRAfv/2qUSbnGRUXxL32tTtcuVE2ZmyGpkyOEgPnS9GfAOJLqS9BLaEegPvGo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zDxQm9+A2hHDdkBqBnjxp+FzgrU9wEMk6rAhmb/Kp9s=; b=MxFUVQR37iKPOapbNMA1tZ2wAG
 vbjiYtnjAXK3GWp1JcBHBfAlp4dnDVGmA7JcrpJaN2lkBAyTXGNpAEHMfzM2GBEUT3nmCKAq+bbFF
 YWJ3FJUpSBYumCWRaO2AHU1Z3h32pLnLNpsBb7ykzoi3lSnyutvNZD7UuTSuSBLg3Zjw=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qqZkH-0002cq-Uj for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 13:59:34 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 336291FEC2;
 Wed, 11 Oct 2023 13:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1697032763; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zDxQm9+A2hHDdkBqBnjxp+FzgrU9wEMk6rAhmb/Kp9s=;
 b=MX4GRXweEU3+XM4fNlEs3A+BqRtzzpgxMiAftXX6g9ZLS7hPaiN+NUwB7O5nTNbKpYHb32
 U2Ic/NoBvQHpy8Sp5DZKfmeZu81zDEqY07sNYBpyp1bl1n5s5KVSwg4rpKjfCv/ym0im0G
 22H6oXZpsKvuGNOGhE5Gg45Aib50FlU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1697032763;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zDxQm9+A2hHDdkBqBnjxp+FzgrU9wEMk6rAhmb/Kp9s=;
 b=ap3Cb6XIdQHU9oUjKWllUwJlGo0UHKGx1/ng4FjeRG8qvIt+eT1khKU6uQlMCvzv9NGAp1
 8vfCNRaX2LGHl6AA==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 1E436134F5;
 Wed, 11 Oct 2023 13:59:23 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id 3XNmBzuqJmWcXQAAMHmgww
 (envelope-from <jack@suse.cz>); Wed, 11 Oct 2023 13:59:23 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 78020A05BC; Wed, 11 Oct 2023 15:59:22 +0200 (CEST)
Date: Wed, 11 Oct 2023 15:59:22 +0200
From: Jan Kara <jack@suse.cz>
To: Max Kellermann <max.kellermann@ionos.com>
Message-ID: <20231011135922.4bij3ittlg4ujkd7@quack3>
References: <69dda7be-d7c8-401f-89f3-7a5ca5550e2f@oracle.com>
 <20231009144340.418904-1-max.kellermann@ionos.com>
 <20231010131125.3uyfkqbcetfcqsve@quack3>
 <CAKPOu+-nC2bQTZYL0XTzJL6Tx4Pi1gLfNWCjU2Qz1f_5CbJc1w@mail.gmail.com>
 <20231011100541.sfn3prgtmp7hk2oj@quack3>
 <CAKPOu+_xdFALt9sgdd5w66Ab6KTqiy8+Z0Yd3Ss4+92jh8nCwg@mail.gmail.com>
 <20231011120655.ndb7bfasptjym3wl@quack3>
 <CAKPOu+-hLrrpZShHh0o6uc_KMW91suEd0_V_uzp5vMf4NM-8yw@mail.gmail.com>
 <CAKPOu+_0yjg=PrwAR8jKok8WskjdDEJOBtu3uKR_4Qtp8b7H1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKPOu+_0yjg=PrwAR8jKok8WskjdDEJOBtu3uKR_4Qtp8b7H1Q@mail.gmail.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed 11-10-23 14:27:49, Max Kellermann wrote: > On Wed,
   Oct 11, 2023 at 2:18 PM Max Kellermann <max.kellermann@ionos.com> wrote:
    > > But without the other filesystems. I'll resend it with just the [...]
    
 
 Content analysis details:   (-2.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [195.135.220.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1qqZkH-0002cq-Uj
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, Jan Kara <jack@suse.cz>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Yang Xu <xuyang2018.jy@fujitsu.com>,
 Ilya Dryomov <idryomov@gmail.com>, Xiubo Li <xiubli@redhat.com>,
 ceph-devel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gV2VkIDExLTEwLTIzIDE0OjI3OjQ5LCBNYXggS2VsbGVybWFubiB3cm90ZToKPiBPbiBXZWQs
IE9jdCAxMSwgMjAyMyBhdCAyOjE44oCvUE0gTWF4IEtlbGxlcm1hbm4gPG1heC5rZWxsZXJtYW5u
QGlvbm9zLmNvbT4gd3JvdGU6Cj4gPiBCdXQgd2l0aG91dCB0aGUgb3RoZXIgZmlsZXN5c3RlbXMu
IEknbGwgcmVzZW5kIGl0IHdpdGgganVzdCB0aGUKPiA+IHBvc2l4X2FjbC5oIGh1bmsuCj4gCj4g
VGhpbmtpbmcgYWdhaW4sIEkgZG9uJ3QgdGhpbmsgdGhpcyBpcyB0aGUgcHJvcGVyIHNvbHV0aW9u
LiBUaGlzIG1heQo+IHNlcnZlciBhcyBhIHdvcmthcm91bmQgc28gdGhvc2UgYnJva2VuIGZpbGVz
eXN0ZW1zIGRvbid0IHN1ZmZlciBmcm9tCj4gdGhpcyBidWcsIGJ1dCBpdCdzIG5vdCBwcm9wZXIu
Cj4gCj4gcG9zaXhfYWNsX2NyZWF0ZSgpIGlzIG9ubHkgc3VwcG9zZWQgdG8gYXBweSB0aGUgdW1h
c2sgaWYgdGhlIGlub2RlCj4gc3VwcG9ydHMgQUNMczsgaWYgbm90LCB0aGUgVkZTIGlzIHN1cHBv
c2VkIHRvIGRvIGl0LiBCdXQgaWYgdGhlCj4gZmlsZXN5c3RlbSBwcmV0ZW5kcyB0byBoYXZlIEFD
TCBzdXBwb3J0IGJ1dCB0aGUga2VybmVsIGRvZXMgbm90LCBpdCdzCj4gcmVhbGx5IGEgZmlsZXN5
c3RlbSBidWcuIEhhY2tpbmcgdGhlIHVtYXNrIGNvZGUgaW50bwo+IHBvc2l4X2FjbF9jcmVhdGUo
KSBmb3IgdGhhdCBpbmNvbnNpc3RlbnQgY2FzZSBkb2Vzbid0IHNvdW5kIHJpZ2h0Lgo+IAo+IEEg
YmV0dGVyIHdvcmthcm91bmQgd291bGQgYmUgdGhpcyBwYXRjaDoKPiBodHRwczovL3BhdGNod29y
ay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtbmZzL3BhdGNoLzE1MTYwMzc0NDY2Mi4yOTAzNS40
OTEwMTYxMjY0MTI0ODc1NjU4LnN0Z2l0QHJhYmJpdC5pbnRlcm4uY20tYWcvCj4gSSBzdWJtaXR0
ZWQgaXQgbW9yZSB0aGFuIDUgeWVhcnMgYWdvLCBpdCBnb3Qgb25lIHBvc2l0aXZlIHJldmlldywg
YnV0Cj4gd2FzIG5ldmVyIG1lcmdlZC4KPiAKPiBUaGlzIHBhdGNoIGVuYWJsZXMgdGhlIFZGUydz
IHVtYXNrIGNvZGUgZXZlbiBpZiB0aGUgZmlsZXN5c3RlbQo+IHByZXJlbnRzIHRvIHN1cHBvcnQg
QUNMcy4gVGhpcyBzdGlsbCBkb2Vzbid0IGZpeCB0aGUgZmlsZXN5c3RlbSBidWcsCj4gYnV0IG1h
a2VzIFZGUydzIGJlaGF2aW9yIGNvbnNpc3RlbnQuCgpPSywgdGhhdCBzb2x1dGlvbiB3b3JrcyBm
b3IgbWUgYXMgd2VsbC4gSSBhZ3JlZSBpdCBzZWVtcyBhIHRhZCBiaXQgY2xlYW5lci4KQ2hyaXN0
aWFuLCB3aGljaCBvbmUgd291bGQgeW91IHByZWZlcj8KCgkJCQkJCQkJSG9uemEKLS0gCkphbiBL
YXJhIDxqYWNrQHN1c2UuY29tPgpTVVNFIExhYnMsIENSCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpm
cy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
