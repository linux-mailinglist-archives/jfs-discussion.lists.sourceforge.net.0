Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DEC7C4F8E
	for <lists+jfs-discussion@lfdr.de>; Wed, 11 Oct 2023 12:06:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qqW6I-0006ou-N6;
	Wed, 11 Oct 2023 10:05:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1qqW6G-0006oe-Ae
 for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 10:05:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KvCiUYneHj84xzWqOcZeY7+I2IayaqBntzgcE8QwB8U=; b=iMgt7uvdqoA7mulydaZA0C/PXY
 ForPAD6cSLO0QUXa2Oql6oNQlYx8WR3FDioVwL4C3SZoRd6lCGCtK902kvIrwB5dbrq0+QXNoer4C
 k0jC+RagINDOKvzc2Id0iHizpUer/wKkJwAFkAmb/I8tJheMsVAcdFJq6je12IWZmt8M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KvCiUYneHj84xzWqOcZeY7+I2IayaqBntzgcE8QwB8U=; b=T2NEvQF9bp9UBmjHn79zSofZCA
 8qHqa5kxkxTAVTNCSYrkIuUAnj6uaz74yzdP0alt9gjGm4gPgffSJeAxhypfriKS/SrNUxL++JJrL
 OFpivkYfLpykdGKMIVDllapmTMLN1m31I0zIpxXKIEUrkjfF0D8LJrHC3h+SQB6NE0kc=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qqW6B-0002QR-U3 for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 10:05:56 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 85F1321846;
 Wed, 11 Oct 2023 10:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1697018742; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KvCiUYneHj84xzWqOcZeY7+I2IayaqBntzgcE8QwB8U=;
 b=p+rqvMXbLI2hW8Qv6uv8BDydqVQ6n1DhuxcIr7zf93KJ3qtr7qHmHxKGrFvgZBDBPP84B5
 r4UCpL6t6rDLNacSKImf9aipwXnJgMUxbxhmHmYMynGz9SFfBZIITIQj3dAp7xdTOMMuAQ
 d9Dfpxw988QJ7gqWFGFOEsmS+3Wv8wg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1697018742;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KvCiUYneHj84xzWqOcZeY7+I2IayaqBntzgcE8QwB8U=;
 b=wNU592+Vcr8OXaOweD0TnSahKEDozcrRqkR02RSKK+eClIhMnSLaCUIFFxLAv35dZJR8Ti
 y+TbLbHtNl+GLwAg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 6B8BD138EF;
 Wed, 11 Oct 2023 10:05:42 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id Xbg9GnZzJmWCVgAAMHmgww
 (envelope-from <jack@suse.cz>); Wed, 11 Oct 2023 10:05:42 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id CF275A05BC; Wed, 11 Oct 2023 12:05:41 +0200 (CEST)
Date: Wed, 11 Oct 2023 12:05:41 +0200
From: Jan Kara <jack@suse.cz>
To: Max Kellermann <max.kellermann@ionos.com>
Message-ID: <20231011100541.sfn3prgtmp7hk2oj@quack3>
References: <69dda7be-d7c8-401f-89f3-7a5ca5550e2f@oracle.com>
 <20231009144340.418904-1-max.kellermann@ionos.com>
 <20231010131125.3uyfkqbcetfcqsve@quack3>
 <CAKPOu+-nC2bQTZYL0XTzJL6Tx4Pi1gLfNWCjU2Qz1f_5CbJc1w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKPOu+-nC2bQTZYL0XTzJL6Tx4Pi1gLfNWCjU2Qz1f_5CbJc1w@mail.gmail.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue 10-10-23 15:17:17, Max Kellermann wrote: > On Tue,
   Oct 10, 2023 at 3:11 PM Jan Kara <jack@suse.cz> wrote: > > Thanks for the
    updated changelog! But as I'm looking into VFS code isn't > > this [...] 
 
 Content analysis details:   (-2.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [195.135.220.28 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1qqW6B-0002QR-U3
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
 linux-ext4@vger.kernel.org, Jan Kara <jack@suse.cz>, fdevel@quack3,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.com>,
 Yang Xu <xuyang2018.jy@fujitsu.com>, Ilya Dryomov <idryomov@gmail.com>,
 Xiubo Li <xiubli@redhat.com>, ceph-devel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVHVlIDEwLTEwLTIzIDE1OjE3OjE3LCBNYXggS2VsbGVybWFubiB3cm90ZToKPiBPbiBUdWUs
IE9jdCAxMCwgMjAyMyBhdCAzOjEx4oCvUE0gSmFuIEthcmEgPGphY2tAc3VzZS5jej4gd3JvdGU6
Cj4gPiBUaGFua3MgZm9yIHRoZSB1cGRhdGVkIGNoYW5nZWxvZyEgQnV0IGFzIEknbSBsb29raW5n
IGludG8gVkZTIGNvZGUgaXNuJ3QKPiA+IHRoaXMgYWxyZWFkeSBoYW5kbGVkIGJ5IG1vZGVfc3Ry
aXBfdW1hc2soKSAvIHZmc19wcmVwYXJlX21vZGUoKSBpbgo+ID4gZnMvbmFtZWkuYz8gQmVjYXVz
ZSBwb3NpeF9hY2xfY3JlYXRlKCkgZG9lc24ndCBkbyBhbnl0aGluZyB0byAnbW9kZScgZm9yCj4g
PiAhSVNfUE9TSVhBQ0woKSBmaWxlc3lzdGVtcyBlaXRoZXIuIFNvIGF0IGxlYXN0IGV4dDIgKHdo
ZXJlIEkndmUgY2hlY2tlZAo+ID4gdGhlIG1vdW50IG9wdGlvbiBoYW5kbGluZykgZG9lcyBzZWVt
IHRvIGhhdmUgdW1hc2sgcHJvcGVybHkgYXBwbGllZCBpbiBhbGwKPiA+IHRoZSBjYXNlcy4gQnV0
IEkgbWlnaHQgYmUgbWlzc2luZyBzb21ldGhpbmcuLi4KPiAKPiBJJ20gbm90IHN1cmUgZWl0aGVy
LiBJIHdhcyBob3BpbmcgdGhlIFZGUyBleHBlcnRzIGNvdWxkIHRlbGwgc29tZXRoaW5nCj4gYWJv
dXQgaG93IHRoaXMgQVBJIGlzIHN1cHBvc2VkIHRvIGJlIHVzZWQgYW5kIHdob3NlIHJlc3BvbnNp
YmlsaXR5IGl0Cj4gaXMgdG8gYXBwbHkgdGhlIHVtYXNrLiBUaGVyZSB1c2VkIHRvIGJlIHNvbWUg
Y29uZnVzaW9uIGluIHRoZSBjb2RlLCB0bwo+IHRoZSBwb2ludCBpdCB3YXMgbWlzc2luZyBjb21w
bGV0ZWx5IGZvciBPX1RNUEZJTEUuIEknbSBzdGlsbCBzb21ld2hhdAo+IGNvbmZ1c2VkLiBNYXli
ZSB0aGlzIGlzIGEgY2hhbmNlIHRvIGNsZWFyIHRoaXMgY29uZnVzaW9uIHVwIGFuZCB0aGVuCj4g
ZG9jdW1lbnQgaXQ/CgpTbyBJJ3ZlIGNoZWNrZWQgc29tZSBtb3JlIGFuZCB0aGUga2VybmVsIGRv
YyBjb21tZW50cyBiZWZvcmUKbW9kZV9zdHJpcF91bWFzaygpIGFuZCB2ZnNfcHJlcGFyZV9tb2Rl
KCkgbWFrZSBpdCBwcmV0dHkgb2J2aW91cyAtIGFsbApwYXRocyBjcmVhdGluZyBuZXcgaW5vZGVz
IG11c3QgYmUgY2FsbGluZyB2ZnNfcHJlcGFyZV9tb2RlKCkuIEFzIGEgcmVzdWx0Cm1vZGVfc3Ry
aXBfdW1hc2soKSB3aGljaCBoYW5kbGVzIHVtYXNrIHN0cmlwcGluZyBmb3IgZmlsZXN5c3RlbXMg
bm90CnN1cHBvcnRpbmcgcG9zaXggQUNMcy4gRm9yIGZpbGVzeXN0ZW1zIHRoYXQgZG8gc3VwcG9y
dCBBQ0xzLApwb3NpeF9hY2xfY3JlYXRlKCkgbXVzdCBiZSBjYWxsIGFuZCB0aGF0IGhhbmRsZXMg
dW1hc2sgc3RyaXBwaW5nLiBTbyB5b3VyCmZpeCBzaG91bGQgbm90IGJlIG5lZWRlZC4gQ0NlZCBz
b21lIHJlbGV2YW50IHBlb3BsZSBmb3IgY29uZmlybWF0aW9uLgoKPiBJIHdpc2ggdGhlcmUgd2Fz
IG9uZSBjZW50cmFsIHBsYWNlIHRvIGFwcGx5IHRoZSB1bWFzaywgYW5kIG5vdCBzcHJlYWQKPiBp
dCBhcm91bmQgdHdvIChvciBtb3JlPykgZGlmZmVyZW50IGNvZGUgbG9jYXRpb25zLCBkZXBlbmRp
bmcgb24KPiB3aGV0aGVyIHRoZXJlJ3MgYW4gQUNMLiBGb3IgbXkgdGFzdGUsIHRoYXQgc29ydCBv
ZiBwb2xpY3kgaXMgdG9vIGVycm9yCj4gcHJvbmUgZm9yIHNvbWV0aGluZyBhcyBzZW5zaXRpdmUg
YXMgdW1hc2tzLiBBZnRlciB3ZSBhbHJlYWR5IGhhZCB0aGUKPiBPX1RNUEZJTEUgdnVsbmVyYWJp
bGl0eSAod2hpY2ggd2FzIG9ubHkgZml4ZWQgbGFzdCB5ZWFyLCB0aHJlZQo+IHllYXJzKCEpIGFm
dGVyIEkgcmVwb3J0ZWQgaXQpLgoKSSBhZ3JlZSBoYXZpbmcgdW1hc2sgc3RyaXBwaW5nIGluIHR3
byBwbGFjZXMgaXMgbm90IGdyZWF0IGJ1dCBpdCdzCmRpZmZpY3VsdCB0byBhdm9pZCB3aXRoIGhv
dyBwb3NpeCBBQ0xzIGFyZSBpbXBsZW1lbnRlZCBhbmQgaW50ZXJ0d2luZWQgaW4KdmFyaW91cyBm
aWxlc3lzdGVtIGltcGxlbWVudGF0aW9ucy4gQXQgbGVhc3QgdGhlIGN1cnJlbnQgZGVzaWduIG1h
ZGUgaXQKcXVpdGUgYSBiaXQgaGFyZGVyIHRvIGZvcmdldCB0byBzdHJpcCB0aGUgdW1hc2suCgoJ
CQkJCQkJCUhvbnphCi0tIApKYW4gS2FyYSA8amFja0BzdXNlLmNvbT4KU1VTRSBMYWJzLCBDUgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNj
dXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Np
b24K
